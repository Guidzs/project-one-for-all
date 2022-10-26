SELECT 
    AR.artist_name AS artista,
    AL.name AS album
FROM
    SpotifyClone.artists AS AR
		INNER JOIN
	SpotifyClone.albuns AS AL ON AR.artist_id = AL.artist_id
WHERE artist_name = 'Elis Regina'
ORDER BY album;