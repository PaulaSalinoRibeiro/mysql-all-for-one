SELECT 
    t.track_name AS cancao, COUNT(h.id_track) AS reproducoes
FROM
    SpotifyClone.tracks AS t
        INNER JOIN
    SpotifyClone.historys AS h ON t.id_track = h.id_track
GROUP BY cancao
ORDER BY reproducoes DESC , cancao
LIMIT 2; 