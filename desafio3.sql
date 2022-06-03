SELECT 
    u.user_name AS usuario,
    COUNT(h.id_user) AS qtde_musicas_ouvidas,
    ROUND(SUM(t.duration_seg/60), 2) AS total_minutos
FROM
    SpotifyClone.users AS u
        INNER JOIN
    SpotifyClone.historys AS h ON u.id_user = h.id_user
		INNER JOIN
	SpotifyClone.tracks AS t ON h.id_track = t.id_track
GROUP BY u.user_name
ORDER BY u.user_name;