SELECT 
    art.artist_name AS artista, 
    al.album_name AS album,
    COUNT(f.id_artist) AS seguidores
FROM
    SpotifyClone.followers AS f
        INNER JOIN
    SpotifyClone.artists AS art ON art.id_artist = f.id_artist
		INNER JOIN
	SpotifyClone.albuns AS al ON al.id_artist = art.id_artist
GROUP BY al.album_name, f.id_artist, art.artist_name
ORDER BY seguidores DESC, artista, album;