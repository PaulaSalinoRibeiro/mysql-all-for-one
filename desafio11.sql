SELECT
    track_name AS nome_musica,
    CASE
        WHEN track_name LIKE '%Streets' THEN REPLACE(track_name, 'Streets', 'Code Review')
        WHEN track_name LIKE '%Her Own' THEN REPLACE(track_name, 'Her Own', 'Trybe')
        WHEN track_name LIKE '%Inner Fire' THEN REPLACE(track_name, 'Inner Fire', 'Project')
        WHEN track_name LIKE '%Silly' THEN REPLACE(track_name, 'Silly', 'Nice')
        WHEN track_name LIKE '%Circus' THEN REPLACE(track_name, 'Circus', 'Pull Request')
    END AS novo_nome
FROM SpotifyClone.tracks 
WHERE id_track IN(3, 15, 6, 4, 18)
ORDER BY track_name;