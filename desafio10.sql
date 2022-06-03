SELECT 
    t.track_name AS nome, COUNT(h.id_track) AS reproducoes
FROM
    SpotifyClone.tracks AS t
        INNER JOIN
    SpotifyClone.historys AS h ON t.id_track = h.id_track
        INNER JOIN
    SpotifyClone.users AS u ON u.id_user = h.id_user
        INNER JOIN
    SpotifyClone.plans AS p ON p.id_plan = u.id_plan
WHERE
    type_plan = 'gratuito'
        OR type_plan = 'pessoal'
GROUP BY h.id_track
ORDER BY t.track_name;