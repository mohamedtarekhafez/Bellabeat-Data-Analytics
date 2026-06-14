-- Bellabeat User Segmentation Based on Daily Acivity 
SELECT 
    Id,
    ROUND(AVG(TotalSteps), 0) AS Average_Daily_Steps,
    CASE 
        WHEN AVG(TotalSteps) < 5000 THEN 'Sedentary'
        WHEN AVG(TotalSteps) >= 5000 AND AVG(TotalSteps) < 7499 THEN 'Lightly Active'
        WHEN AVG(TotalSteps) >= 7500 AND AVG(TotalSteps) < 9999 THEN 'Fairly Active'
        ELSE 'Very Active'
    END AS User_Segment
FROM 
    bellabeat.dbo.dailyActivity
GROUP BY 
    Id
ORDER BY 
    Average_Daily_Steps DESC
