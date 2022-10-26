SELECT
    musics.music_name AS nome_musica,
    CASE
        WHEN musics.music_name LIKE '%Bard%' THEN REPLACE(musics.music_name, 'Bard', 'QA')
        WHEN musics.music_name LIKE '%Amar%' THEN REPLACE(musics.music_name, 'Amar', 'Code Review')
        WHEN musics.music_name LIKE '%Pais%' THEN REPLACE(musics.music_name, 'Pais', 'Pull Requests')
        WHEN musics.music_name LIKE '%SOUL%' THEN REPLACE(musics.music_name, 'SOUL', 'CODE')
        WHEN musics.music_name LIKE '%SUPERSTAR%' THEN REPLACE(musics.music_name, 'SUPERSTAR', 'SUPERDEV')
    END AS novo_nome
FROM
    SpotifyClone.musics
ORDER BY novo_nome DESC
LIMIT 5;
