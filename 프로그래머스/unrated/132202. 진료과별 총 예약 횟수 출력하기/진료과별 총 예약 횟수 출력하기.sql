SELECT
    MCDP_CD  "진료과코드",
    COUNT(APNT_YMD)  "5월예약건수"
FROM APPOINTMENT
WHERE TO_CHAR(APNT_YMD,'YYYY-MM') ='2022-05'
group by MCDP_CD
order by COUNT(APNT_YMD),MCDP_CD;
