--- Calculating number of users & daily averages

--(1)Tracking their physical activities 

SELECT 
    COUNT(DISTINCT id) AS users_tracking_activity,
    AVG(TotalSteps) AS average_steps,
    AVG(TotalDistance) AS average_distance,
    AVG(Calories) AS average_calories
FROM
    bellabeat.dbo.dailyActivity


--2)Tracking heart rate

SELECT
    COUNT(DISTINCT id) AS users_tracking_heart,
    AVG(value) AS average_heart_rate,
    MAX(value) AS maximum_heart_rate,
    MIN(value) AS minimum_heart_rate

FROM
    bellabeat.dbo.heartrate_seconds


--3)Tracking sleep

SELECT 
    COUNT(DISTINCT id) AS users_traking_sleep,
    CAST(AVG(TotalMinutesAsleep)/60.0 AS DECIMAL(10,2)) AS average_hours_asleep,
    CAST(MIN(TotalMinutesAsleep)/60.0 AS DECIMAL(10,2)) AS minimum_hours_asleep,
    CAST(MAX(TotalMinutesAsleep)/60.0 AS DECIMAL(10,2)) AS maximum_hours_asleep,
    CAST(AVG(TotalTimeInBed)/60.0 AS DECIMAL(10,2)) average_hours_inBed

FROM
    bellabeat.dbo.sleep_day


--4)Tracking weight

SELECT 
    COUNT(DISTINCT id) AS users_traking_weight,
    AVG(weightkg) AS average_weight,
    MIN(weightkg) AS minimum_weight,
    MAX(weightkg) AS maximum_weight
FROM
    bellabeat.dbo.weightLogInfo