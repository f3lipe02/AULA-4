CREATE DATABASE cine_senai_max;

USE cine_senai_max;
DROP TABLE filmes;
CREATE TABLE filmes (
	id_filme int,
	titulo varchar(60),
    genero varchar(45),
    duracao int,
    ano_lancamento INT,
    preco_aluguel DOUBLE,
    primary key (id_filme)
    );
    
    insert into filmes(id_filme, titulo, genero, duracao, ano_lancamento, preco_aluguel)
    values (1, 'Tropa de Elite', 'Ação', 115, 2007, '5.99');
    
    select*from filmes;
    
    INSERT INTO filmes VALUES (72,'Que mulher é essa?','Comédia',93,2001,2.09),(2,'A Senha','Drama',99,2001,2.19),(3,'Do que as mulheres gostam','Comédia',127,2001,2.59),(4,'Dia de Treinamento','Drama',122,2001,1.79),(5,'O Senhor dos Anéis: A sociedade do anel','Ficção e Fantasia',178,2001,2.59),(6,'Harry Potter e a Pedra Filosofal','Ficção e Fantasia',152,2001,2.69),(7,'Os Excêntricos Tenenbaums','Comédia',110,2002,1.89),(8,'Seu marido e minha mulher','Comédia',91,2002,2.59),(9,'11 de setembro','Drama',134,2002,2.99),(10,'Simone','Drama',117,2002,2.69),(11,'É hora do show','Comédia',95,2002,1.79),(12,'O Senhor dos Anéis: As duas torres','Ficção e Fantasia',179,2002,2.39),(13,'Harry Potter e a Câmara Secreta','Ficção e Fantasia',161,2002,1.79),(14,'O Novato','Mistério e Suspense',115,2003,1.69),(15,'Alguém tem que ceder','Comédia',128,2003,1.69),(16,'A última noite','Drama',135,2003,1.59),(17,'Revelações','Mistério e Suspense',106,2003,1.99),(18,'Lições Para Toda a Vida','Drama',111,2003,1.69),(19,'21 gramas','Drama',124,2003,2.09),(20,'Simplesmente amor','Comédia',135,2003,2.29),(21,'O Senhor dos Anéis: O retorno do rei','Ficção e Fantasia',200,2003,1.99),(22,'Visões','Arte',107,2004,2.59),(23,'Dança comigo','Drama',106,2004,1.69),(24,'Uma Eleição Muito Atrapalhada','Comédia',110,2004,2.89),(25,'Bridget Jones: No Limite da Razão','Drama',108,2004,2.89),(26,'Ray','Drama',152,2004,2.59),(27,'Monster - Desejo Assassino','Drama',109,2004,2.09),(28,'Harry Potter e o Prisioneiro de Azkabam','Ficção e Fantasia',142,2004,1.69),(29,'Tudo por Dinheiro','Drama',122,2005,2.79),(30,'Capote','Drama',114,2005,2.39),(31,'Harry Potter e o Cálice de Fogo','Ficção e Fantasia',157,2005,2.69),(32,'Falsária','Drama',93,2006,2.89),(33,'V de Vingança','Drama',132,2006,1.59),(34,'Armações do Amor','Drama',97,2006,1.99),(35,'Happy Feet','Animação',108,2006,1.79),(36,'As Torres Gêmeas','Drama',129,2006,1.59),(37,'Candy','Drama',116,2006,1.59),(38,'A casa do lago','Drama',99,2006,2.49),(39,'Não estou lá','Drama',135,2007,1.79),(40,'Quando Me Apaixono','Drama',100,2007,1.99),(41,'O Reino','Drama',110,2007,2.09),(42,'Onde os Fracos Não Têm Vez','Drama',122,2007,1.49),(43,'Invasores','Mistério e Suspense',99,2007,2.09),(44,'Harry Potter e a Ordem da Fênix','Ficção e Fantasia',138,2007,2.49),(45,'Queime Depois de Ler','Drama',96,2008,2.39),(46,'Sleepwalking','Drama',101,2008,1.79),(47,'Um Amor de Tesouro','Ação e Aventura',112,2008,2.69),(48,'Astro Boy','Ação e Aventura',94,2009,2.89),(49,'Harry Potter e o Enigma do Príncipe','Ficção e Fantasia',153,2009,1.59),(50,'Inverno da Alma','Drama',100,2010,2.69),(51,'Uma Manhã Gloriosa','Comédia',107,2010,2.99),(52,'Jogo de Poder','Drama',108,2010,2.89),(53,'O Vencedor','Ação e Aventura',116,2010,2.49),(54,'Harry Potter e as Relíquias da Morte: Parte 1','Ficção e Fantasia',146,2010,2.79),(55,'Mulheres ao Ataque','Drama',102,2011,1.69),(56,'Cada Um Tem a Gêmea Que Merece','Comédia',91,2011,2.09),(57,'Jovens Adultos','Drama',94,2011,1.99),(58,'Histórias Cruzadas','Drama',146,2011,2.49),(59,'Pior dos Pecados','Mistério e Suspense',111,2011,2.39),(60,'Morte Negra','Drama',102,2011,2.69),(61,'Harry Potter e as Relíquias da Morte: Parte 2','Ficção e Fantasia',130,2011,1.99),(62,'As Sessões','Drama',95,2012,2.29),(63,'Django Livre','Ação e Aventura',165,2012,2.69),(64,'A Viagem','Drama',172,2012,2.89),(65,'Motoqueiro Fantasma - Espírito de Vingança','Ação e Aventura',96,2012,1.79),(66,'Jogos Vorazes','Drama',142,2012,1.59),(67,'O Ataque','Drama',131,2013,1.59),(68,'Sem proteção','Mistério e Suspense',125,2013,2.39),(69,'Sangue no Gelo','Mistério e Suspense',105,2013,2.49),(70,'Capitão Phillips','Drama',134,2013,1.59),(71,'Rio 2','Ação',101,2014,1.79),(73,'O Rappa - Me Deixa','Rock Alternativo',101,2014,1.79);
select id_filme, titulo genero from filmes where id_filme = 6;

select id_filme, titulo, ano_lancamento from filmes where id_filme = 33;

----

#Consulte o titulo, gênero e preço do aluguel dos filmes são do genero drama e comedia
select titulo, genero, preco_aluguel from filmes where genero = 'Drama' or genero = 'Comédia';

#Consulte titulo e ano lançamento dos filmes lançados entre 2001 E 2005
select titulo, ano_lancamento from filmes where ano_lancamento = 2001 or ano_lancamento = 2005;

#Consulte titulo, ano lançamento e gênero dos filmes de Drama ou Animação que foram lançados depois de 2009
select titulo, genero, ano_lancamento from filmes where (genero = 'Drama' or genero = 'Animação') and (ano_lancamento > 2009);

#Consulte titulo, ano lançamento e gênero dos filmes deAção e Aventura ou Mistério e Suspense que foram lançados entre 2005 e 2010
select titulo, genero, ano_lancamento from filmes where (genero = 'Ação e Aventura' or genero = 'Mistério e Suspense') and (ano_lancamento >2005 or ano_lancamento =2010 );

#Consulte titulo, ano lançamento e gênero dos filmes de Ação e Aventura ou Mistério e Suspense que foram lançados entre 2005 e 2010 com preço de aluguel maior que 3 reais
select titulo, ano_lancamento, genero from filmes where (genero = 'Ação e Aventura' OR genero = 'Mistério e Suspense') and (ano_lancamento > 2005 AND ano_lancamento < 2010) and preco_aluguel >3;

#Aumente em 10% o preço de aluguel dos filmes que possuem o preço de aluguel entre 4 e 5 reais
update filmes set preco_aluguel = preco_aluguel *1.1 
where preco_aluguel >= 4 and preco_aluguel <= 5;
set sql_safe_updates = 0;

#Aumente em 15% o preço de aluguel dos filmes que possuem o preço de aluguel entre 2 e 3 reais.



    
    

