create table Classes
(
    class        CHAR(20),
    type         CHAR(5),
    country      CHAR(20),
    numGuns      INTEGER,
    bore         DECIMAL(3, 1),
    displacement INTEGER
);

INSERT INTO Classes (class, type, country, numGuns, bore, displacement) VALUES ('Bismarck', 'bb', 'Germany', 8, 15.0, 42000);
INSERT INTO Classes (class, type, country, numGuns, bore, displacement) VALUES ('Iowa', 'bb', 'USA', 9, 16.0, 46000);
INSERT INTO Classes (class, type, country, numGuns, bore, displacement) VALUES ('Kongo', 'bc', 'Japan', 8, 14.0, 32000);
INSERT INTO Classes (class, type, country, numGuns, bore, displacement) VALUES ('North Carolina', 'bb', 'USA', 9, 16.0, 37000);
INSERT INTO Classes (class, type, country, numGuns, bore, displacement) VALUES ('Renown', 'bc', 'Gt. Britain', 6, 15.0, 32000);
INSERT INTO Classes (class, type, country, numGuns, bore, displacement) VALUES ('Revenge', 'bb', 'Gt. Britain', 8, 15.0, 29000);
INSERT INTO Classes (class, type, country, numGuns, bore, displacement) VALUES ('Tennessee', 'bb', 'USA', 12, 14.0, 32000);
INSERT INTO Classes (class, type, country, numGuns, bore, displacement) VALUES ('Yamato', 'bb', 'Japan', 9, 18.0, 65000);
