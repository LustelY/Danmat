-----------------------------------------------------------------------------------
-- 유저 테이블

DROP TABLE User;

CREATE TABLE User(
	userid			VARCHAR(20)			NOT NULL PRIMARY KEY,
	passwd			VARCHAR(16)			NOT NULL,
	email			VARCHAR(20)			NOT NULL UNIQUE KEY,
	regDate			TIMESTAMP			NOT NULL DEFAULT CURRENT_TIMESTAMP
)

SELECT * FROM User;

SELECT count(*) as count FROM User;

SELECT passwd FROM User WHERE email = 'donoun6@naver.com' AND userid = 'donoun6';
  	
-----------------------------------------------------------------------------------
-- 유저 데이터

INSERT INTO danmat.`user` (userid,passwd,email,regDate) VALUES
	 ('admin','12345678','admin@admin.com','2022-08-25 17:15:43'),
	 ('skyak','kim55845972','skyak4809@naver.com','2022-08-25 17:16:39'),
	 ('test123','1q2w3e4r','test@naver.com','2022-08-25 17:16:25');


SELECT * FROM word;

SELECT * FROM word WHERE word LIKE '%수%'
-----------------------------------------------------------------------------------
-- 랭킹 테이블
CREATE TABLE Rank(
	userid		VARCHAR(20)			FOREIGN KEY REFFERNCES User(userid),
	score		INT					NOT NULL DEFAULT 0
)

-----------------------------------------------------------------------------------
-- 게시판 테이블
CREATE TABLE BOARD(
	board_idx		INT				PRIMARY KEY		AUTO_INCREMENT, -- board index num
	userId			VARCHAR(15)		NOT NULL, -- userId
	title			VARCHAR(30)		NOT NULL, -- 제목
	content			VARCHAR(300)	NOT NULL, -- 내용
	createDate		TIMESTAMP		NOT NULL	DEFAULT CURRENT_TIMESTAMP, -- 게시글 생성 날짜
	updateDate		TIMESTAMP		NOT NULL	DEFAULT 0, -- 게시글 수정 날짜
	deleteDate		TIMESTAMP		NOT NULL	DEFAULT 0, -- 게시글 삭제 날짜
	delete_yn		CHAR(1)			NOT NULL	DEFAULT 'N', -- 삭제된 게시글 여부(Y:삭제된 글)
	readCount		BIGINT			NOT NULL	DEFAULT 0, -- 조회수
	replyCount		BIGINT			NOT NULL	DEFAULT 0 -- 댓글 수
)
select * from BOARD;
drop table board;
select * from board where board_idx=;

select * from BOARD;
SELECT * FROM WORD;
SELECT * FROM BOARD;
 
drop table board;

-----------------------------------------------------------------------------------
-- 게시판 데이터

INSERT INTO danmat.board (userId,title,content,createDate,updateDate,deleteDate,delete_yn,readCount) VALUES
	 ('skyak','안녕하세요','감사해요 잘있어요 다시 만나요','2022-08-25 16:49:45','0000-00-00 00:00:00','0000-00-00 00:00:00','N',0),
	 ('skyak','어서오세요','오래간만이에요','2022-08-25 16:49:58','0000-00-00 00:00:00','2022-08-25 16:50:09','Y',0),
	 ('skyak','게시판 테스트 중입니다.','본 게시판은 테스트용 게시판이므로 글꼴 변환 및 글자 크기 조절이 불가능합니다.','2022-08-26 09:20:59','0000-00-00 00:00:00','0000-00-00 00:00:00','N',0);


-----------------------------------------------------------------------------------
-- 단어 테이블
CREATE TABLE word (
wid			INT			PRIMARY KEY AUTO_INCREMENT,
word		VARCHAR(100)	NOT NULL,
len			INT				NOT NULL,				
grade		VARCHAR(10)		NOT NULL,
category	VARCHAR(500)	DEFAULT NULL,
category2	VARCHAR(200)	DEFAULT NULL,
def			VARCHAR(1000)	NOT NULL,
ex			VARCHAR(2000)	NOT NULL	
)

select * from word WHERE word = '멍게';

-----------------------------------------------------------------------------------
-- 사용 단어 테이블
CREATE TABLE isuse (
	usedWord		VARCHAR(100)	NOT NULL
)
select * from isuse;
-----------------------------------------------------------------------------------
-- 출력 단어 테이블
CREATE TABLE answer (
	answerWord		VARCHAR(100)	NOT NULL
)
select * from answer;

-----------------------------------------------------------------------------------
-- 점수 저장 테이블
CREATE TABLE point (
	point		INT 	NOT NULL
)
select * from point;
insert into point (point) values(10);

Select sum(point) from point;