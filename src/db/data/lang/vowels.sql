-- a
INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
SELECT
    uppercase,
    lowercase,
    letter AS vowel,
    letterId
FROM
    alphabet
WHERE
    letterId = 1;

INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
VALUES
    ('Á', 'á', 'Á agúdu', 1),
    ('À', 'à', 'Á grávi', 1),
    ('Ã', 'ã', 'Á nazáu', 1),
    ('Ä', 'ä', 'Á dúplu', 1);

-- e
INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
SELECT
    uppercase,
    lowercase,
    letter AS vowel,
    letterId
FROM
    alphabet
WHERE
    letterId = 5;

INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
VALUES
    ('É', 'é', 'È agúdu', 5),
    ('È', 'è', 'È grávi', 5),
    ('Ë', 'ë', 'È dúplu', 5);

-- i
INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
SELECT
    uppercase,
    lowercase,
    letter AS vowel,
    letterId
FROM
    alphabet
WHERE
    letterId = 9;

INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
VALUES
    ('Í', 'í', 'Í agúdu', 9),
    ('Ĩ', 'ĩ', 'Í nazáu', 9),
    ('Ï', 'ï', 'Í dúplu', 9);

-- o
INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
SELECT
    uppercase,
    lowercase,
    letter AS vowel,
    letterId
FROM
    alphabet
WHERE
    letterId = 14;

INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
VALUES
    ('Ó', 'ó', 'Ò agúdu', 14),
    ('Ò', 'ò', 'Ò grávi', 14),
    ('Ö', 'ö', 'Ò dúplu', 14);

-- u
INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
SELECT
    uppercase,
    lowercase,
    letter AS vowel,
    letterId
FROM
    alphabet
WHERE
    letterId = 20;

INSERT INTO
    vowels (uppercase, lowercase, vowel, letterId)
VALUES
    ('Ú', 'ú', 'Ú agúdu', 20),
    ('Ũ', 'ũ', 'Ú nazáu', 20),
    ('Ü', 'ü', 'Ú dúplu', 20),
    ('Û', 'û', 'Ú agúdu-grávi', 20);