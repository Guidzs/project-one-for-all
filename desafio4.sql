SELECT DISTINCT
    U.name AS usuario,
    IF(DATEDIFF(MAX(HR.date_reproductions),
                CAST('2021-01-01 00:00:00' AS DATETIME)) >= 0,
        'Usuário ativo',
        'Usuário inativo') AS status_usuario
FROM
    SpotifyClone.users AS U
        LEFT JOIN
    SpotifyClone.history_reproductions AS HR ON U.user_id = HR.user_id
GROUP BY U.name
ORDER BY U.name;
