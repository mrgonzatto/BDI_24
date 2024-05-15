-- INNER JOIN
-- Retorna os registros quesão comuns às duas tabelas
SELECT 
	NF.NRO_NOTA, NF.NM_CLIENTE, 
    COUNT(INF.COD_PRODUTO) AS QTD,
    SUM(INF.VL_TOTAL) AS TOTAL
FROM 
	NOTA_FISCAL AS NF
INNER JOIN ITEM_NOTA_FISCAL AS INF 
ON NF.NRO_NOTA = INF.NRO_NOTA
GROUP BY NF.NRO_NOTA
ORDER BY QTD, TOTAL DESC;


-- INNER JOIN
SELECT 
	NF.NRO_NOTA, NF.NM_CLIENTE, P.DESC_PRODUTO
FROM NOTA_FISCAL AS NF
INNER JOIN ITEM_NOTA_FISCAL AS INF
	ON NF.NRO_NOTA = INF.NRO_NOTA
INNER JOIN PRODUTO AS P
	ON INF.COD_PRODUTO = P.COD_PRODUTO
ORDER BY NF.NRO_NOTA ASC;

-- LEFT JOIN
-- Retorna os registros que estão na tabela à esquerda
-- (mesmo que não estejam à direita) eosregistros da 
-- tabela à direita que são comuns a ela.

SELECT 
	NF.NRO_NOTA, NF.NM_CLIENTE, P.DESC_PRODUTO
FROM NOTA_FISCAL AS NF
LEFT JOIN ITEM_NOTA_FISCAL AS INF
	ON NF.NRO_NOTA = INF.NRO_NOTA
LEFT JOIN PRODUTO AS P
	ON INF.COD_PRODUTO = P.COD_PRODUTO
ORDER BY NF.NRO_NOTA ASC;

-- RIGHT JOIN
-- Usamos para exibir os registros que estão na tabela
-- à direita (mesmo que não estejam na tabela à 
-- esquerda) e os registros da tabela à esquerda
-- que são comuns à direita
SELECT 
	NF.NRO_NOTA, NF.NM_CLIENTE, P.DESC_PRODUTO
FROM NOTA_FISCAL AS NF
RIGHT JOIN ITEM_NOTA_FISCAL AS INF
	ON NF.NRO_NOTA = INF.NRO_NOTA
RIGHT JOIN PRODUTO AS P
	ON INF.COD_PRODUTO = P.COD_PRODUTO
ORDER BY NF.NRO_NOTA ASC;	


-- ATIVIDADE 
/*
	Escreva um script .sql que alimente as tabelas 
	do seu BD do Simpósio.
    Crie ao menos um simpósio, 2 cursos, 3 palestras, 
    5 artigos, com autores e participantes.
    Não esqueça da comissão avaliadora e das avaliações.
    Realize o processo de preenchimento de alguns dados
    em todas as tabelas do seu Schema.
*/


