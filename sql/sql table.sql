--id coinall
--pw coin

CREATE TABLE users
( id VARCHAR2(10) CONSTRAINT users_id_pk PRIMARY KEY,
pw VARCHAR2(10) not NULL,
name VARCHAR2(10) NOT NULL,
ph1 VARCHAR2(3) NOT NULL,
ph2 VARCHAR2(4) NOT NULL,
ph3 VARCHAR2(4) NOT NULL,
addr1 VARCHAR2(5) NOT NULL,
addr2 VARCHAR2(15) NOT NULL,
addr3 VARCHAR2(15) NOT NULL,
email VARCHAR2(10) NOT NULL,
email2 VARCHAR2(10) NOT NULL,
bank1 VARCHAR2(10) NOT NULL,
bank2 VARCHAR2(10) NOT NULL,
bpw VARCHAR2(4) NOT NULL);

select * from users; --유저 테이블

CREATE TABLE account(
id VARCHAR2(10) not NULL,
name VARCHAR2(10) NOT NULL,
bank1 VARCHAR2(10) NOT NULL,
bank2 VARCHAR2(10) NOT NULL,
bpw VARCHAR2(4) NOT NULL,
money VARCHAR2(50) Not Null
);

alter table account
add 
constraint act_id_fk foreign key(id) references users(id);

select * from account; --계좌 테이블


CREATE TABLE cash (
id VARCHAR2(10) not NULL,
cmoney NUMBER(7,0) not NULL
);

alter table cash
add 
constraint cash_id_fk foreign key(id) references users(id);

select * from cash; --케시 충전,잔액 정보 테이블



CREATE TABLE bankacc (
id VARCHAR2(10) not NULL,
money NUMBER(7,0) not NULL
);

alter table bankacc
add 
constraint bankacc_id_fk foreign key(id) references users(id);

select * from bankacc; --계좌 입출금,잔액 정보 테이블


--코인 거래 내역 테이블
CREATE TABLE coin(
ordernum NUMBER not NULL,
id VARCHAR2(10) not NULL,
acoin VARCHAR2(10),
bcoin VARCHAR2(10),
ccoin VARCHAR2(10),
dcoin VARCHAR2(10),
amount NUMBER,
orderday DATE,
orderprice NUMBER,
piece NUMBER
);

alter table coin
add 
constraint coin_id_fk foreign key(id) references users(id);
-- 주문번호 아이디 코인 수량 구매일 구매당시가격 개당가격(변동)

--코인 가격 저장 테이블
CREATE TABLE chart(
acoin VARCHAR2(10),
bcoin VARCHAR2(10),
ccoin VARCHAR2(10),
dcoin VARCHAR2(10)
);

--게시판 테이블

create table myboard
( num NUMBER(4) CONSTRAINT myboard_num_pk PRIMARY KEY,
  title VARCHAR2(100) NOT NULL,
  id VARCHAR2(10) NOT NULL,
  pos NUMBER(10) DEFAULT 0 ,
  depth NUMBER(10) DEFAULT 0 ,
  content VARCHAR2(2000) NOT NULL,
  writeday DATE DEFAULT SYSDATE,
  readcnt NUMBER(4) DEFAULT 0 );

alter table myboard
add 
constraint myboard_id_fk foreign key(id) references users(id);

--drop sequence myboard_seq;

create sequence myboard_seq;

CREATE TABLE prch
( id VARCHAR2(10) CONSTRAINT prch_id_pk PRIMARY KEY,
coinname VARCHAR2(20) not NULL,
nmbr VARCHAR2(20) NOT NULL,
hyundete VARCHAR2(40) NOT NULL,
coin28 VARCHAR2(20) NOT NULL,
coin29 VARCHAR2(20) NOT NULL,
px VARCHAR2(20) NOT NULL);

alter table prch
add 
constraint prch_id_fk foreign key(id) references users(id);

--addr2 제약수정
alter table users modify ( addr2 varchar(200));

--댓글테이블
CREATE TABLE comments(
  comment_number NUMBER PRIMARY KEY,
  id VARCHAR2(10) NOT NULL,
  comment_content VARCHAR2(200) NOT NULL,
  comment_date DATE DEFAULT SYSDATE,
  num NUMBER NOT NULL,

CONSTRAINT comment_fk FOREIGN KEY(num)
REFERENCES myboard(num) ON DELETE CASCADE);
 
--댓글 시퀀스 생성
CREATE SEQUENCE comment_seq
 START WITH 1
INCREMENT BY 1;


CREATE TABLE bit
(num NUMBER(38),
bit NUMBER(38));