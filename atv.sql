CREATE VIEW vw_transmi as  
SELECT
 v.*,
 c.comentario
 FROM
 plataformastreamingjogos.vw_detalhestransmissoes as v
 INNER JOIN 
 transmissoes AS t on t.data_transmissao = v.data_transmissao
 INNER JOIN
 comentarios AS c ON c.transmissao_id = t.id;
 