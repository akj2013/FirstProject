create table tbl_member (
	idx number not null,
	name varchar2(50),
	userid varchar2(50) primary key,
	pwd varchar2(50),
	email varchar2(50),
	phone varchar2(50),
	regtime varchar2(50)
);

create sequence tbl_member_seq_idx;

select * from member;
select to_char(sysdate,'YYYY.MM.DD.HH24:MI:SS') FROM dual;

insert into member (idx, name, userid, pwd, email, phone, regtime)
values(member_seq_idx.nextval,'name','userid','pwd','email','phone',to_char(sysdate,'YYYY.MM.DD.HH24:MI:SS'));

create table tbl_image (
	idx number,
	name varchar2(50),
	message varchar2(50),
	regtime varchar2(50),
	filename varchar2(50)
);

create sequence tbl_image_seq_idx;

commit

select * from tbl_image;
select * from tbl_image order by idx desc;

delete from tbl_image;

alter table tbl_image add constraint pk_image primary key (idx);

select * from tbl_board order by bno desc;
drop table tbl_image;

select /*+ INDEX_ASC(tbl_image pk_image) */ rownum rn, idx, name from tbl_image;

-- 첫번째 6개
select /*+ INDEX_DESC(tbl_image pk_image) */ rownum rn, idx, name from tbl_image where rownum <= 6;
-- 두번째 6개
select idx, name from (select /*+ INDEX_DESC(tbl_image pk_image) */ rownum rn, idx, name from tbl_image where rownum <=12) where rn > 6;

select count(idx) from tbl_image;

-- 깃허브 커밋 테스트 라인입니다. 두번째 커밋입니다.

-- 기본키 확인
SELECT A.Constraint_Type, A.Table_Name, B.Column_Name
FROM SYS.User_Constraints A, SYS.User_Cons_columns B
WHERE A.Constraint_Name = B.Constraint_Name
and A.Table_Name = 'TBL_BOARD';

-- 테이블 컬럼 정보 확인.
select * from all_COL_COMMENTS
where table_name = 'TABLE_NAME';
select * from all_COL_COMMENTS
where table_name = '[tbl_board]';

-- 인덱스 소유자, 인덱스 이름, 테이블 소유자, 인덱스 , 기본키(PRIMARY KEY) 확인 가능
SELECT * FROM ALL_IND_COLUMNS
WHERE TABLE_NAME = 'TABLE_NAME';
SELECT * FROM ALL_IND_COLUMNS
WHERE TABLE_NAME = '[TBL_BOARD]';

-- 테이블 구조 확인
select * from col where tname='TBL_BOARD';

-- 테이블 제약조건 확인
SELECT
INDEX_NAME 
FROM
USER_CONSTRAINTS 
WHERE 
TABLE_NAME = 'MEMBER' AND 
CONSTRAINT_TYPE = 'P';
  
-- 또 다른 명령문
SELECT
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    DATA_LENGTH,
    DATA_PRECISION,
    DATA_SCALE,
    NULLABLE,
    COLUMN_ID,
    DATA_DEFAULT,
    CHAR_LENGTH
FROM
    USER_TAB_COLUMNS
WHERE
    TABLE_NAME = 'TBL_BOARD';

-- 기본키 드랍
ALTER TABLE [테이블명] DROP PRIMARY KEY; -- 기본
alter table tbl_board drop primary key; -- 기존 기본키를 삭제
alter table tbl_board add constraint pk_board primary key (bno); -- 기본키를 새로 제약조건으로 건다.
select /*+ INDEX_DESC(tbl_board pk_board) */ rownum rn, bno, title from tbl_board; -- index_desc로 select