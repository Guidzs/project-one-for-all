SELECT 
    FORMAT(MIN(P.value), 2) AS faturamento_minimo,
    CONVERT(MAX(P.value), DECIMAL(5, 2)) AS faturamento_maximo,
    CONVERT(AVG(P.value), DECIMAL(5, 2)) AS faturamento_medio,
    CONVERT(SUM(P.value), DECIMAL(5, 2)) AS faturamento_total
FROM
    SpotifyClone.users AS U
        INNER JOIN
    SpotifyClone.plan AS P ON P.plan_id = U.plan_id;
