SELECT 
    U.name AS usuario,
    COUNT(HR.music_name) AS qt_de_musicas_ouvidas,
    ROUND(SUM(M.time_seconds) / 60, 2) AS total_minutos
FROM
    SpotifyClone.users AS U
        INNER JOIN
    SpotifyClone.history_reproductions AS HR ON U.user_id = HR.user_id
        INNER JOIN
    SpotifyClone.musics AS M ON M.music_id = HR.music_id
GROUP BY U.name
ORDER BY U.name;
