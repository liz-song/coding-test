SELECT d.ID, d.EMAIL, d.FIRST_NAME, d.LAST_NAME
FROM DEVELOPERS d
WHERE (d.SKILL_CODE & 256) > 0  -- Python 스킬을 가진 개발자
   OR (d.SKILL_CODE & 1024) > 0  -- C# 스킬을 가진 개발자
ORDER BY d.ID;
