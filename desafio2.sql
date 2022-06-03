SELECT 
    COUNT(DISTINCT t.id_track) AS cancoes,
    COUNT(DISTINCT art.id_artist) AS artistas,
    COUNT(DISTINCT al.id_album) AS albuns
FROM
    SpotifyClone.tracks AS t
        INNER JOIN
    SpotifyClone.albuns AS al ON t.id_album = al.id_album
        INNER JOIN
    SpotifyClone.artists AS art ON art.id_artist = al.id_artist;