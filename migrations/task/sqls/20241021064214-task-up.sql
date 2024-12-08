
-- ████████  █████   █     █ 
--   █ █   ██    █  █     ██ 
--   █ █████ ███ ███       █ 
--   █ █   █    ██  █      █ 
--   █ █   █████ █   █     █ 
-- ===================== ====================
-- 1. 用戶資料，資料表為 USER

-- 1. 新增：新增六筆用戶資料，資料如下：
--     1. 用戶名稱為`李燕容`，Email 為`lee2000@hexschooltest.io`，Role為`USER`
--     2. 用戶名稱為`王小明`，Email 為`wXlTq@hexschooltest.io`，Role為`USER`
--     3. 用戶名稱為`肌肉棒子`，Email 為`muscle@hexschooltest.io`，Role為`USER`
--     4. 用戶名稱為`好野人`，Email 為`richman@hexschooltest.io`，Role為`USER`
--     5. 用戶名稱為`Q太郎`，Email 為`starplatinum@hexschooltest.io`，Role為`USER`
--     6. 用戶名稱為 透明人，Email 為 opacity0@hexschooltest.io，Role 為 USER


insert  into   "USER"  (name,email,role)
values('李燕容','lee2000@hexschooltest.io','USER');

insert  into   "USER"  (name,email,role)
values('王小明','wXlTq@hexschooltest.io','USER');

insert  into   "USER"  (name,email,role)
values('肌肉棒子','muscle@hexschooltest.io','USER');

insert  into   "USER"  (name,email,role)
values('好野人','richman@hexschooltest.io','USER');

insert  into   "USER"  (name,email,role)
values('Q太郎','starplatinum@hexschooltest.io','USER');

insert  into   "USER"  (name,email,role)
values('透明人','opcatiy0@hexschooltest.io','USER');

-- 1-2 修改：用 Email 找到 李燕容、肌肉棒子、Q太郎，如果他的 Role 為 USER 將他的 Role 改為 COACH

update  "user"
set  role = 'COACH'
where  email in ('lee2000@hexschooltest.io','muscle@hexschooltest.io','starplatinum@hexschooltest.io')
and role = 'USER';

-- 1-3 刪除：刪除USER 資料表中，用 Email 找到透明人，並刪除該筆資料

delete  from "USER"
where  email = 'opcatiy0@hexschooltest.io';

-- 1-4 查詢：取得USER 資料表目前所有用戶數量（提示：使用count函式）

select  count(*) as  "用戶數量" 
from   "USER"; 


-- 1-5 查詢：取得 USER 資料表所有用戶資料，並列出前 3 筆（提示：使用limit語法） 

select  *  from  "USER"  limit 3 ; 


--  ████████  █████   █    ████  
--    █ █   ██    █  █         █ 
--    █ █████ ███ ███       ███  
--    █ █   █    ██  █     █     
--    █ █   █████ █   █    █████ 
-- ===================== ====================
