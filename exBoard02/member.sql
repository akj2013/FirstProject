create table member(
	idx number not null unique ,		-- 기본키 자동증가
	name varchar2(20) primary key,			-- 회원이름
	userid varchar2(20) not null,			-- 회원 ID
	pwd varchar2(20) not null,			-- 비밀번호
	email varchar2(20),						-- 이메일
	phone varchar2(20),						-- 전화번호
	regtime varchar2(20)						-- 저장시간
);

create sequence member_seq_idx;

select * from member;
select to_char(sysdate,'YYYY.MM.DD.HH24:MI:SS') FROM dual;

insert into member (idx, name, userid, pwd, email, phone, regtime)
values(member_seq_idx.nextval,'name','userid','pwd','email','phone',to_char(sysdate,'YYYY.MM.DD.HH24:MI:SS'));