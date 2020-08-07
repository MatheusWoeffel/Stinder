INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('alencar.costa@inf.ufrgs.br', 'alencar.costa', 'Alencar da Costa', '1999-03-09', 'Soco, soco, bate, bate\nSoco, soco, vira, vira\nSoco, bate, soco, vira\nSoco, bate, vira', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('mwcamargo@inf.ufrgs.br', 'seninhaBrabo', 'Matheus Woeffel', '1998-10-29', 'Errados são aqueles que chegam no bagulho, tá ligado? Sem saber como é a segurança do ambiente.', 'm');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('pablovittar@gmail.com', 'seuAmorMePegou', 'Pablo Vittar', '1994-11-01', 'Seu amor me pegou\nCê bateu tão forte com o teu amor\n Nocauteou, me tonteou\n Veio à tona, fui à lona, foi K.O.', 'f');
INSERT INTO AppUser(email, password, name, birthdate, description, gender) VALUES ('ronaldinho@gmail.com', 'ronaldinho123', 'Ronaldinho Gaúcho', '1980-03-21', 'Atualmente em reclusão, mas não somos todos presidiários do sistema?', 'm');

INSERT INTO classification(userfrom,userto,type) VALUES (2,1,'d');
INSERT INTO classification(userfrom,userto,type) VALUES (1,3,'s');
INSERT INTO classification(userfrom,userto,type) VALUES (3,1,'l');
INSERT INTO classification(userfrom,userto,type) VALUES (4,3,'l');
INSERT INTO classification(userfrom,userto,type) VALUES (3,4,'l');
INSERT INTO classification(userfrom,userto,type) VALUES (4,2,'l');
INSERT INTO classification(userfrom,userto,type) VALUES (2,4,'s');

INSERT INTO Match(userOne,userTwo, isValid) VALUES (1,3,true);
INSERT INTO Match(userOne,userTwo, isValid) VALUES (3,4,false);
INSERT INTO Match(userOne,userTwo, isValid) VALUES (2,4,true);

INSERT INTO Message(match,sender, text) VALUES (1,1,'Oi linda, vi que você joga cs GO');
INSERT INTO Message(match,sender, text) VALUES (1,3,'Isso mesmo, nada peita minha awp amado');
INSERT INTO Message(match,sender, text) VALUES (1,1,'Vamo ver então, isso é pq vc n conhece o costinha pinada violenta');

INSERT INTO GoldUser(userid,cpf,expiresAt,street,addressNumber,city,uf,cep) VALUES (1,'11111111111','2020-11-29','Travessa Jaguarão', 0, 'Teutônia', 'RS', '95890000');
INSERT INTO GoldUser(userid,cpf,expiresAt,street,addressNumber,city,uf,cep) VALUES (2,'22222222222','2020-12-29','Alameda Vespúcio', 25, 'Porto Alegre', 'RS', '90550031'); 
INSERT INTO GoldUser(userid,cpf,expiresAt,street,addressNumber,city,uf,cep) VALUES (3,'33333333333','2020-09-29','Avenida Dom Pedro', 35, 'São Paulo', 'SP', '08090284'); 
