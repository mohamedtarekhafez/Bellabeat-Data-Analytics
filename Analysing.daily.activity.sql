--Calculate average time for each activity

SELECT 
	AVG(VeryActiveMinutes)  AS Average_VeryActiveMinutes,
	AVG(FairlyActiveMinutes)   AS Average_FairlyActiveMinutes,
	AVG(LightlyActiveMinutes) AS average_LightlyActiveHours,
	AVG(SedentaryMinutes) AS average_SedentaryHours

FROM
	bellabeat.dbo.dailyActivity