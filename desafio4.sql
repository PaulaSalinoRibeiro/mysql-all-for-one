SELECT 
    u.user_name AS usuario,
    IF(MAX(YEAR(h.rep_date)) = 2021,
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.users AS u
        INNER JOIN
    SpotifyClone.historys AS h ON u.id_user = h.id_user
GROUP BY usuario
ORDER BY usuario;