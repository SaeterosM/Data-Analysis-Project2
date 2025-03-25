Select * from anxiety_dataset;

-- 1. 
select 
	Case 
		WHEN Age Between 18 AND 19 THEN '18-19'
        WHEN Age Between 20 AND 30 THEN '20-30'
        WHEN Age Between 10 AND 60 THEN '31-60'
        WHEN Age >= 61 THEN '61+' 
		END AS Age_Range,
		gender, AVG(Stress_Level) AS Ave_Stress_Level
 FROM anxiety_dataset
 GROUP BY Age_Range,gender
 ORDER BY Age_Range,gender, Ave_Stress_Level;
 
 -- 2. Based on Occpuation the stress level 
 SELECT Occupation,
 AVG(Stress_Level) AS Avg_Stress_Level,
 AVG (Heart_Rate) AS Avg_Heart_Rate,
 AVG (Sleep_Hours) AS Avg_Sleep_Hours 
 FROM anxiety_dataset
 GROUP BY Occupation 
 ORDER BY Occupation,Avg_Stress_Level,Avg_Heart_Rate,Avg_Sleep_Hours ;

-- 3. Baed on Age_Range use Physical activty,caffeine intake, and stress level 
select 
	Case 
		WHEN Age Between 18 AND 19 THEN '18-19'
        WHEN Age Between 20 AND 30 THEN '20-30'
        WHEN Age Between 10 AND 60 THEN '31-60'
        WHEN Age >= 61 THEN '61+' 
		END AS Age_Range,
        AVG(Physical_Activity_hrs_per_week) AS Avg_Physical_Activity_hrs_per_week,
        AVG(Caffeine_Intake_mg_per_day) AS Avg_Caffeine_Intake_mg_per_day,
        AVG(Alcohol_Consumption_drinks_per_week) AS Avg_Alcohol_Consumption_drinks_per_week,
        AVG(Stress_Level) AS Avg_Stress_Level 
        From anxiety_dataset
        GROUP By Age_Range
        ORDER BY Age_Range,Avg_Caffeine_Intake_mg_per_day, Avg_Alcohol_Consumption_drinks_per_week, Avg_Stress_Level;
        
        -- 4. Avg anxiety level based on age_range,gender
        SELECT 
        	Case 
		WHEN Age Between 18 AND 19 THEN '18-19'
        WHEN Age Between 20 AND 30 THEN '20-30'
        WHEN Age Between 10 AND 60 THEN '31-60'
        WHEN Age >= 61 THEN '61+' 
        END AS Age_Range,
        AVG(Anxiety_Level) AS Avg_Anxiety_Level 
	FROM anxiety_dataset
    GROUP BY Age_Range
    ORDER  BY Age_Range, Avg_Anxiety_Level;
        