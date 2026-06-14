--Extract the most active time intervals for users

SELECT
	CAST(hourly_activity.ActivityHour AS TIME) AS activity_time,
	ROUND(AVG(hourly_activity.TotalIntensity),2) AS average_intensity,
	AVG(METs.METs) AS average_METs
FROM	
	bellabeat.dbo.hourly_activity AS hourly_activity
	
JOIN bellabeat.dbo.minuteMETsNarrow AS METs 

ON 
	hourly_activity.Id = METs.Id AND
	hourly_activity.ActivityHour = METs.ActivityMinute

GROUP BY 
	CAST(hourly_activity.ActivityHour AS TIME)

ORDER BY
	average_intensity DESC