SELECT 
    COUNT(*) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historys AS h
        INNER JOIN
    SpotifyClone.users AS u ON h.id_user = u.id_user
WHERE
    user_name LIKE 'Bill';