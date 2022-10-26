SELECT 
    COUNT(DISTINCT M.music_name) AS cancoes,
    COUNT(DISTINCT AR.artist_name) AS artistas,
    COUNT(DISTINCT AL.name) AS albuns
FROM
    SpotifyClone.musics AS M
        INNER JOIN
    SpotifyClone.artists AS AR
        INNER JOIN
    SpotifyClone.albuns AS AL;