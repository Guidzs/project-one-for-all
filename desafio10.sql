SELECT 
    M.music_name AS nome,
    COUNT(HR.music_name) AS reproducoes
FROM
    SpotifyClone.users AS U
        INNER JOIN
    SpotifyClone.history_reproductions AS HR ON U.user_id = HR.user_id
        INNER JOIN
    SpotifyClone.musics AS M ON M.music_id = HR.music_id
WHERE U.plan_id IN (1, 3)
GROUP BY M.music_name
ORDER BY M.music_name;
