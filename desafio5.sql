SELECT 
    HR.music_name AS cancao,
    COUNT(music_id) AS reproducoes
FROM
    SpotifyClone.history_reproductions AS HR
GROUP BY HR.music_name
ORDER BY reproducoes DESC, HR.music_name ASC
LIMIT 2;
