SELECT MAX(duration_ms) from dbo.dataset;

SELECT MIN(duration_ms) from dbo.dataset;

SELECT AVG(CAST(duration_ms AS BIGINT)) from dbo.dataset;

SELECT SUM(CAST(duration_ms AS BIGINT)) from dbo.dataset;

SELECT COUNT(duration_ms) FROM dbo.dataset WHERE duration_ms < 200000;

SELECT track_genre, COUNT(*) FROM dbo.dataset GROUP BY track_genre;

SELECT artists FROM dbo.dataset 
GROUP BY artists
HAVING COUNT(*)=
    (SELECT MAX(songcount) FROM
        (SELECT artists,COUNT(*) AS songcount
         FROM dbo.dataset
         GROUP BY artists) t1);