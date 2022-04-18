#Drill II - Project Worker#
#1. 
SELECT Worker_name, project_id
FROM workers as w
INNER JOIN project_worker as p
ON w.worker_id = p.worker_id;

#2.
SELECT Worker_name, project_id
FROM workers as w
LEFT JOIN project_worker as p
ON w.worker_id = p.worker_id;

#3. 
SELECT project_name, capacity, startdate
FROM projects
WHERE startdate = (SELECT min(startdate) FROM projects);

SELECT project_name, capacity, startdate
FROM projects
ORDER BY startdate asc
limit 1;

#4. 
SELECT project_name
FROM projects as p
WHERE project_id = (SELECT project_id
FROM project_worker
WHERE worker_id = (SELECT worker_id
FROM workers
WHERE birthdate in (SELECT min(birthdate) FROM workers)));

#4.[Extension] Get the unduplicated project name(s) for which 
# the youngest worker has worked.
SELECT project_name
FROM projects as p
WHERE project_id in (SELECT project_id
FROM project_worker
WHERE worker_id in (SELECT worker_id
FROM workers
WHERE birthdate in (SELECT max(birthdate) FROM workers)));

#5.
SELECT project_name, capacity, startdate, Numb_workers_per_project
FROM projects as p, (SELECT project_id, count(worker_id) as Numb_workers_per_project
FROM project_worker
GROUP BY project_id) as sub1
WHERE Numb_workers_per_project > capacity and p.project_id = sub1.project_id;
