--to find first withness
SELECT *
FROM person
where address_street_name like 'northwestern dr'
order by address_number DESC limit 1

--to see first withness statement
SELECT person_id, transcript
from interview
where person_id = '14887'

--to see second withness
SELECT *
from person
where name like '%Annabel%' and address_street_name = 'Franklin Ave'

--to see second withness statement
SELECT person_id, transcript
from interview
where person_id = '16371'

--to find killer's name and id
SELECT gender, person.id, person.name, get_fit_now_member.membership_status
from drivers_license
join person
on drivers_license.id = person.license_id
join get_fit_now_member
on person.id = get_fit_now_member.person_id
where  membership_status = 'gold' and plate_number like '%H42W%'

--to see killer's statement
SELECT person_id, transcript
from interview
where person_id = '67318'


--To see ID that attended the SQL concert 3 times in December 2017
SELECT *
from facebook_event_checkin
where event_name = 'SQL Symphony Concert' and date BETWEEN '20171201' and '20171230'


--To see the person that hire the killer
SELECT name, gender, hair_color, height, date, car_make, car_model, person.id, facebook_event_checkin.person_id
from drivers_license
join person
on drivers_license.id = person.license_id
join facebook_event_checkin
on person.id = facebook_event_checkin.person_id
where  gender = 'female' and hair_color = 'red' and car_make = 'Tesla'



