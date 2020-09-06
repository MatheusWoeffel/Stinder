-------------------------------------------------------------------
-------------------------------------------------------------------
--------------------------  TRIGGER -------------------------------
-------------------------------------------------------------------

-- Esse trigger é executado sempre logo após que uma nova classificação é realizada.
-- Ele verifica se com a classificação que foi inserida, algum match foi formado.
-- Ou seja, ele verifica se a pessoa que classificou já possui uma classificação
-- feita pelo usuário que ele acabou de classificar. Caso ambas classificações
-- tenham sido positivas ('S'-Superlike ou 'L'-Like), um match é formado inserindo
-- uma nova linha na tabela de Match.
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