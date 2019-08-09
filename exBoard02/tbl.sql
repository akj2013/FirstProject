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

drop table tbl_image;

select /*+ INDEX_ASC(tbl_image pk_image) */ rownum rn, idx, name from tbl_image;

-- 첫번째 6개
select /*+ INDEX_DESC(tbl_image pk_image) */ rownum rn, idx, name from tbl_image where rownum <= 6;
-- 두번째 6개
select idx, name from (select /*+ INDEX_DESC(tbl_image pk_image) */ rownum rn, idx, name from tbl_image where rownum <=12) where rn > 6;

select count(idx) from tbl_image;

-- 깃허브 커밋 테스트 라인입니다. 두번째 커밋입니다.