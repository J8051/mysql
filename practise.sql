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


Q11a. SELECT firstname,lastname
     FROM staff,sales
     WHERE staff.staffno = sales.staffno AND saledate = "2014-09-23";

Q11b. SELECT staff.firstname, staff.lastname
     FROM staff
     JOIN sales
     ON sales.staffno = staff.staffno
     WHERE saledate = "2014-09-23";

Q12. SELECT s.lastname Supervisor, e.lastname Employee
    FROM staff s, staff e
    WHERE s.staffno = e.supervisorno AND e.lastname = "McLester";

Q13a. SELECT descript Name, salePrice
     FROM inventory, items
     WHERE inventory.partno = items.partno AND orderno = "020011";

Q13b. SELECT inventory.descript, inventory.saleprice
     FROM inventory
     JOIN items
     ON items.partno = inventory.partno
     WHERE items.orderno = "020011";


Q14a. SELECT concat('$', FORMAT(SUM(inventory.saleprice * items.qty),2)) 'Total Sales', staff.lastname
     FROM inventory 
     JOIN  items, sales, staff
     WHERE inventory.partno = items.partno
     AND  items.orderno = sales.orderno 
     AND staff.staffno = sales.staffno
     AND staff.staffno =  000008;


Q14b. SELECT concat('$', FORMAT(SUM(inventory.saleprice * items.qty),2)) 'Total Sales',  staff.lastname
     FROM inventory 
     JOIN  items 
     ON inventory.partno = items.partno
     JOIN sales 
     ON items.orderno = sales.orderno 
     JOIN staff 
     ON staff.staffno = sales.staffno
     WHERE staff.staffno =  000008;

Q15a. SELECT items.orderno, sales.saledate, staff.lastname
     FROM sales, items, staff 
     WHERE sales.orderno = items.orderno 
     AND sales.staffno = staff.staffno  
     AND month(sales.saledate) = 9; 

Q15b. SELECT items.orderno, sales.saledate, staff.lastname
     FROM sales 
     JOIN items 
     ON sales.orderno = items.orderno
     JOIN staff 
     ON sales.staffno = staff.staffno 
     WHERE month(sales.saledate) = 9; 

Q16a. SELECT  count(sales.staffno), staff.lastname
     FROM sales, staff 
     WHERE sales.staffno = staff.staffno
     AND sales.staffno =  000001;

Q16b. SELECT  count(sales.staffno), staff.lastname
     FROM sales
     JOIN staff 
     ON sales.staffno = staff.staffno
     WHERE sales.staffno =  000001;

Q17a. SELECT items.orderno,  items.partno, inventory.descript, items.qty, inventory.saleprice, concat('$', format(inventory.saleprice * items.qty,2))  Total
     FROM inventory, items, sales 
     WHERE inventory.partno = items.partno
     AND items.orderno = sales.orderno 
     AND sales.custno = 100019 ;

Q17b. SELECT items.orderno,  items.partno, inventory.descript,  items.qty, inventory.saleprice, concat('$', format(inventory.saleprice * items.qty,2)) Total
     FROM inventory 
     JOIN  items 
     ON inventory.partno = items.partno
     JOIN sales 
     ON items.orderno = sales.orderno 
     WHERE sales.custno = 100019 ;

Q18a. SELECT sales.custno,inventory.discontinue 
     FROM inventory ,items,sales
     WHERE inventory.partno = items.partno
     AND items.orderno = sales.orderno 
     AND inventory.discontinue =1; 

Q18b. SELECT sales.custno,inventory.discontinue 
     FROM inventory 
     JOIN  items 
     ON inventory.partno = items.partno
     JOIN sales 
     ON items.orderno = sales.orderno 
     WHERE  inventory.discontinue =1; 












