USE Question_2;
# ---all the subscribed channels of a content creator “John” who has a most pos sentiment on their videos --

SELECT U.User_Name AS "Subscriber Name", CH.Ch_Name AS "Subscribed_Channels",
COUNT(V.Video_Id) AS "No Of Positive sentiment Videos"
FROM Subscribe AS S
INNER JOIN User AS U ON U.User_Id = S.User_Id
INNER JOIN Channels AS CH ON S.Channel_Id = CH.Channel_Id
INNER JOIN Video AS V ON CH.Channel_Id = V.Channel_Id
INNER JOIN Comments AS C ON C.Video_Id= V.Video_Id
WHERE U.User_Name = 'John Smith' AND C.Sentiment='pos' -- showing subscribed channels of John in which videos have positive sentiment 
GROUP BY V.Channel_Id
ORDER BY COUNT(C.Video_Id) DESC;

# ------------------ all the earnings of all the content creators in the past 2 months --------------------------
-- The MONTH function is used to extract the month number from a date type column
-- NOW() function is used to get the current date. 
-- The INTERVAL 2 MONTH clause is used to subtract two months to get 2 month ago interval.
SELECT U.User_Name AS "Creator Name", SUM(E.Amount) AS "Creator Earnings"
FROM Earnings AS E
INNER JOIN User AS U ON U.User_Id = E.Creator_Id
WHERE E.Earning_Date BETWEEN DATE_SUB(CURRENT_DATE, INTERVAL 2 MONTH) AND CURRENT_DATE
GROUP BY E.Creator_Id;

# ------------------- highest-used category of ads used by the content creators ----------------------------
-- Ad_Video is a table that tells what vidoes contains which ads
SELECT A.Ad_Type AS "Ad Category", COUNT(AV.Video_Id) AS "No of Videos" -- No_Of_Videos col shows that in how many videos this ad is used
FROM Ad AS A
INNER JOIN Ad_Video AS AV ON A.Ad_Id = AV.Ad_Id
GROUP BY A.Ad_Type
ORDER BY COUNT(AV.Video_Id) DESC
LIMIT 1; -- since we get results for all three categories so by limiting result to 1, we get the highest one 

# ----------------------------- top channels withmost watched videos  ----------------------------------
SELECT U.User_Name, CH.Ch_Name, SUM(V.No_of_Views) AS 'Total Views', COUNT(V.Video_Id) AS 'No of Videos'
FROM Video AS V
INNER JOIN Channels AS CH ON CH.Channel_Id = V.Channel_Id
INNER JOIN User AS U ON U.User_Id = CH.User_Id
GROUP BY V.Channel_Id
ORDER BY SUM(V.No_of_Views) DESC
LIMIT 5;

# ------------------------- Earnings and No of videos of creators in past 4 months ------------------------
SELECT U.User_Name, COUNT(V.Video_Id) AS 'Videos Created', SUM(E.Amount) AS 'Amount Earned'
FROM Video AS V
INNER JOIN User AS U ON U.User_Id = V.Creator_Id
INNER JOIN Earnings AS E ON E.Creator_Id = V.Creator_Id
WHERE E.Earning_Date BETWEEN DATE_SUB(CURRENT_DATE, INTERVAL 4 MONTH) AND CURRENT_DATE AND
V.Date_Posted BETWEEN DATE_SUB(CURRENT_DATE, INTERVAL 4 MONTH) AND CURRENT_DATE
GROUP BY U.User_Id;