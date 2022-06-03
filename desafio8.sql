SELECT 
    art.artist_name AS artista, al.album_name AS album
FROM
    SpotifyClone.artists AS art
        INNER JOIN
    SpotifyClone.albuns AS al ON art.id_artist = al.id_artist
WHERE
    art.artist_name LIKE 'Walter Phoenix';