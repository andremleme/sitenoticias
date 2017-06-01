use Noticias;

-- AAAA-MM-DD HH:MM:SS

Insert into Usuario (nome, login, email, senha)  values
('Gustavo Sanchez','gugamaster','gusvatito@gmail.com','11976653478'),
('Vinicio Gomes','vini','ocachorrao@gmail.com','11976653333'),
('Marquinho Dj','djMar','sampley@gmail.com','11976653478');

Insert into Perfil (cargo, idUsuario)  values
('Administrador', 1),
('Visitante', 2);

Insert into Noticia (titulo, dataPostagem, conteudo, autor)  values
('Novo curso disponível!',"2017-05-25 14:20:00",'BLABLABLABLABLABLABLABLABLABLABLA', 1),
('Manifestações no Instituto',"2017-05-25 14:20:00",'BLABLABLABLABLABLABLABLABLABLA',2),
('Novo projeto elaborado',"2017-05-25 14:20:00",'BLABLABLABLABLABLABLABLABLA',3);
