use esporte

INSERT INTO jogadoras(nome_jogador, altura, data_nascimento) VALUES ('Joh Oliveiras', 190, '2002/06/09');
INSERT INTO jogadoras(nome_jogador, altura, data_nascimento) VALUES ('Alana Santana', 170, '2003/11/30');
INSERT INTO jogadoras(nome_jogador, altura, data_nascimento) VALUES ('Mateo Hold', 220, '2005/08/25');
INSERT INTO jogadoras(nome_jogador, altura, data_nascimento) VALUES ('Raquel Santos', 190, '2005/08/25');

delete from jogadoras where id_jogador=  9 ;
select * from jogadoras;


INSERT INTO treinadores(nome_treinador, especialidade, data_contratacao) VALUES ('Carlos Alberto', 'Técnico', '2015/05/30');
INSERT INTO treinadores(nome_treinador, especialidade, data_contratacao) VALUES ('Ana Oliver', 'Técnica', '2020/08/27');

select * from treinadores;
delete from treinadores where id_treinadores=  1 ;


INSERT INTO partida(data_partida, adversario, local_, resultado) VALUES ('2021/06/03', 'Equipe Amarela', 'Ginásio M', 'Vitória');
INSERT INTO partida(data_partida, adversario, local_, resultado) VALUES ('2022/07/20', 'Equipe Azul', 'Ginásio E', 'Derrota');
INSERT INTO partida(data_partida, adversario, local_, resultado) VALUES ('2023/09/02', 'Equipe Vermelha', 'Poli Esprt', 'Virória');
INSERT INTO partida(data_partida, adversario, local_, resultado) VALUES ('2024/07/31', 'Equipe Verde', 'Ginásio N', 'Vitória');

select * from partida;

select * from resulte;

select resulte from jogadoras, partida
inner join id_jogador;


select * from partida where data_partida between '2022-07-20' and '2023-07-31';



INSERT INTO resulte (pontos_marcados, bloqueios) VALUES (5, 8);
INSERT INTO resulte (pontos_marcados, bloqueios) VALUES (5, 4);
INSERT INTO resulte (pontos_marcados, bloqueios) VALUES (3, 3);
INSERT INTO resulte (pontos_marcados, bloqueios) VALUES (7, 1);

-- Estava dando erros para inserir uma valor na tabela então, eu pesquisei e descobrir o erro
-- estava colocando um valor na id, e não pode, tem que deixar o próprio banco de dados inserir um valor
-- então para altear isso usamos SHOW CREATE TABLE resulte ( chama a tabela com os comando dela)
-- ALTER TABLE resulte MODIFY COLUMN id_resulte INT AUTO_INCREMENT; ( agora muda esse id )
-- INSERT IGNORE INTO resulte (pontos_marcados, bloqueios) VALUES (7, 1); (agora faça de novo oque tinha feito, só agora insira o valor para testar)


SHOW CREATE TABLE resulte
ALTER TABLE resulte MODIFY COLUMN id_resulte INT AUTO_INCREMENT;
INSERT IGNORE INTO resulte (pontos_marcados, bloqueios) VALUES (7, 1);



SELECT 
    resultados.id_resulte, 
    jogadores.nome AS nome_jogador, 
    partidas.nome AS nome_partida, 
    resultados.pontos_marcados, 
    resultados.bloqueios
FROM 
    resultados
JOIN 
    jogadores ON resultados.id_jogador = jogadores.id_jogador
JOIN 
    partidas ON resultados.id_partida = partidas.id_partida;



DESCRIBE resulte;
DESCRIBE jogadoras;
DESCRIBE partida;
