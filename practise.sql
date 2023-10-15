Q1. SELECT SUM(cdprice + vinylprice)
    FROM music
    WHERE year(datepurchased) >= '2000' AND year(datepurchased) <= '2003';

Q2. SELECT Artist, Title, datepurchased, vinylprice, ROUND(vinylprice*1.8,2) as NewPrice
    FROM music
    WHERE uschartpos = 1 AND ukchartpos =1;

Q3.  SELECT Artist , title
     FROM music
     WHERE vinyl IS NULL; 

Q4. SELECT title
    FROM music
    WHERE ukchartpos = 1 AND uschartpos != 1;

Q5. SELECT COUNT(title)
    FROM music
    WHERE uschartpos <= 5 AND ukchartpos <= 5;	

Q6.  SELECT title, artist
     FROM music
     WHERE Year(datepurchased) = 1985 AND musictype = "pop";

Q7.  SELECT musictype
     FROM music
     GROUP BY musictype
     HAVING COUNT(vinyl) > 8;

Q8.  SELECT CONCAT(artist,' ',title,' ',vinylprice) AS "Album Information"
     FROM music
     WHERE musictype = "reggae" AND cd IS NULL; 

Q9.  SELECT COUNT(cd) + COUNT(vinyl) AS total, musictype
     FROM music
     WHERE musictype="jazz";

Q10.  SELECT artist, title
      FROM music
      WHERE musictype = "rock" AND cd IS NULL;
