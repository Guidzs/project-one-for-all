SELECT 
   AR.artist_name AS artista,
   AL.name AS album,
   COUNT(F.artist_id) AS seguidores
FROM
    SpotifyClone.artists AS AR
        RIGHT JOIN
    SpotifyClone.albuns AS AL ON AR.artist_id = AL.artist_id
		INNER JOIN
	SpotifyClone.following AS F ON F.artist_id = AR.artist_id
GROUP BY album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
