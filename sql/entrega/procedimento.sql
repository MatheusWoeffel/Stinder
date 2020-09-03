CREATE FUNCTION checkForMatches() RETURNS TRIGGER AS $$
BEGIN
  IF NEW.type != 'd' THEN
	  IF EXISTS(SELECT * FROM classification WHERE userTo= NEW.userFrom and userFrom = NEW.userTo and type!='d') THEN
      INSERT INTO Match(userOne,userTwo, isValid) VALUES (NEW.userFrom,NEW.userTo,true);
    END IF;
  END IF;
  RETURN NULL; --Gatilho after
END
$$ LANGUAGE 'plpgsql';


CREATE TRIGGER Match
AFTER INSERT ON classification
FOR EACH ROW
EXECUTE PROCEDURE checkForMatches();