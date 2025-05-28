INSERT INTO
    patterns (dialectId, [from], [to])
VALUES
    -- official dialect
    (1, 'ç', 's'),
    (1, 'ch', 'x'),
    -- (1, 'di', 'dji'), -- could have an accent mark
    -- (1, 'ti', 'txi'), -- could have an accent mark
    (1, 'lh', 'lli'),
    (1, 'nh', 'ĩ'),
    (1, 'r$', 'hr'),
    (1, '^r', 'h'),
    (1, 'rr', 'h'),
    (1, 'ss', 's');