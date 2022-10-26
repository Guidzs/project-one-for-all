SELECT
    COUNT(HR.music_name) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.users AS U
        INNER JOIN
    SpotifyClone.history_reproductions AS HR ON U.user_id = HR.user_id
GROUP BY U.name
HAVING name = 'Barbara Liskov'
ORDER BY U.name;
