select ROOM_DETAILS.ROOM_ID,ROOM_DETAILS.ROOM_TYPE,ROOM_DETAILS.MEMBER_CAPACITY,ROOM_DETAILS.ROOM_RENT
from ROOM_DETAILS
    inner join HOSTEL_DETAILS
        on ROOM_DETAILS.HOSTEL_ID=HOSTEL_DETAILS.HOSTEL_ID
where HOSTEL_DETAILS.LOCATION = 'PHASE-A'
    order by ROOM_DETAILS.ROOM_ID;