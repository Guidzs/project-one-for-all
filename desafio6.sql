SELECT 
    FORMAT(MIN(P.value), 2) AS faturamento_minimo,
    MAX(P.value) AS faturamento_maximo,
    ROUND(AVG(P.value), 2) AS faturamento_medio,
    ROUND(SUM(P.value), 2) AS faturamento_total
FROM
    SpotifyClone.users AS U
        INNER JOIN
    SpotifyClone.plan AS P ON P.plan_id = U.plan_id;
