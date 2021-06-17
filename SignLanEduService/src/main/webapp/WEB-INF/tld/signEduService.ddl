DROP TABLE IF EXISTS quiz;
DROP TABLE IF EXISTS learn;
DROP TABLE IF EXISTS word;
DROP TABLE IF EXISTS member;

/**********************************/
/* Table Name: 회원 */
/**********************************/
CREATE TABLE member(
		m_num                         		INT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '회원번호',
		m_id                          		VARCHAR(12)		 NOT NULL COMMENT '회원아이디',
		m_pw                          		VARCHAR(12)		 NOT NULL COMMENT '회원비밀번호',
		m_name                        		VARCHAR(20)		 NULL  COMMENT '회원이름',
		m_birth                       		DATE		 NULL  COMMENT '회원생일',
		m_sex                         		INT(1)		 NULL  COMMENT '회원성별',
		m_email                       		VARCHAR(40)		 NULL  COMMENT '회원이메일',
		m_register                    		DATETIME		 DEFAULT now()		 NOT NULL COMMENT '회원가입일',
		m_recent                      		DATETIME		 DEFAULT now()		 NOT NULL COMMENT '회원최근접속일',
		m_point                       		INT(10)		 DEFAULT 0		 NULL  COMMENT '회원포인트',
		m_is_admin                    		INT(1)		 DEFAULT 0		 NULL  COMMENT '회원관리자여부'
) COMMENT='회원';

/**********************************/
/* Table Name: 단어 */
/**********************************/
CREATE TABLE word(
		w_num                         		INT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '단어번호',
		w_word                        		VARCHAR(20)		 NOT NULL COMMENT '단어',
		w_explain                     		VARCHAR(20)		 NULL  COMMENT '단어설명',
		w_path                        		VARCHAR(100)		 NULL  COMMENT '단어경로',
		w_index                       		INT(1)		 NULL  COMMENT '단어모델번호',
		w_difficulty                  		INT(1)		 DEFAULT 1		 NOT NULL COMMENT '단어난이도'
) COMMENT='단어';

/**********************************/
/* Table Name: 학습 */
/**********************************/
CREATE TABLE learn(
		l_num                         		INT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '학습번호',
		m_num                         		INT(10)		 NOT NULL COMMENT '회원번호',
		w_num                         		INT(10)		 NOT NULL COMMENT '단어번호',
		l_date                        		DATETIME		 DEFAULT now()		 NOT NULL COMMENT '학습일',
  FOREIGN KEY (m_num) REFERENCES member (m_num),
  FOREIGN KEY (w_num) REFERENCES word (w_num)
) COMMENT='학습';

/**********************************/
/* Table Name: 퀴즈 */
/**********************************/
CREATE TABLE quiz(
		q_num                         		INT(10)		 NOT NULL		 PRIMARY KEY AUTO_INCREMENT COMMENT '퀴즈번호',
		m_num                         		INT(10)		 NOT NULL COMMENT '회원번호',
		w_num                         		INT(10)		 NOT NULL COMMENT '단어번호',
		q_correct                     		INT(1)		 DEFAULT 0		 NOT NULL COMMENT '정답여부',
		q_percent                     		DECIMAL(5,4)		 DEFAULT 0		 NULL  COMMENT '일치도',
		q_date                        		DATETIME		 DEFAULT now()		 NOT NULL COMMENT '퀴즈푼날',
  FOREIGN KEY (m_num) REFERENCES member (m_num),
  FOREIGN KEY (w_num) REFERENCES word (w_num)
) COMMENT='퀴즈';


INSERT INTO member (m_id, m_pw, m_name, m_birth, m_sex, m_email, m_is_admin) VALUES ('admin', 1234, '관리자1', '2021-05-03', 0, 'matt@플데.com', 1);
INSERT INTO member (m_id, m_pw, m_name, m_birth, m_sex, m_email) VALUES ('test1', 1234, '테스트계정', '2002-06-04', 0, '2002@피파.com');
INSERT INTO member (m_id, m_pw, m_name, m_birth, m_sex, m_email) VALUES ('test2', 1234, '테스트계정2', '2002-06-10', 1, '2002@한국축협.com');


INSERT INTO word (w_word, w_explain, w_path, w_index, w_difficulty) VALUES ('배고프다', '배고프다', 'https://signedubucket.s3.ap-northeast-2.amazonaws.com/KETI_SL_0000000227.mp4', 12, 4);
INSERT INTO word (w_word, w_explain, w_path, w_index, w_difficulty) VALUES ('병원', '병원', 'https://signedubucket.s3.ap-northeast-2.amazonaws.com/KETI_SL_0000000232.mp4', 15, 4);
INSERT INTO word (w_word, w_explain, w_path, w_index, w_difficulty) VALUES ('선생님', '선생님', 'https://signedubucket.s3.ap-northeast-2.amazonaws.com/KETI_SL_0000000256.mp4', 21, 4);
INSERT INTO word (w_word, w_explain, w_path, w_index, w_difficulty) VALUES ('아줌마', '아줌마', 'https://signedubucket.s3.ap-northeast-2.amazonaws.com/KETI_SL_0000000282.mp4', 29, 4);
INSERT INTO word (w_word, w_explain, w_path, w_index, w_difficulty) VALUES ('엘리베이터', '엘리베이터', 'https://signedubucket.s3.ap-northeast-2.amazonaws.com/KETI_SL_0000000298.mp4', 37, 4);
INSERT INTO word (w_word, w_explain, w_path, w_index, w_difficulty) VALUES ('택시', '택시', 'https://signedubucket.s3.ap-northeast-2.amazonaws.com/KETI_SL_0000000384.mp4', 45, 4);
INSERT INTO word (w_word, w_explain, w_path, w_index, w_difficulty) VALUES ('팔꿈치', '팔꿈치', 'https://signedubucket.s3.ap-northeast-2.amazonaws.com/KETI_SL_0000000393.mp4', 46, 4);


INSERT INTO learn (m_num, w_num) VALUES (2, 1);
INSERT INTO learn (m_num, w_num) VALUES (2, 2);
INSERT INTO learn (m_num, w_num) VALUES (2, 3);
INSERT INTO learn (m_num, w_num) VALUES (3, 1);
INSERT INTO learn (m_num, w_num) VALUES (3, 3);

INSERT INTO quiz (m_num, w_num, q_correct, q_percent) VALUES (2, 4, 1, 0.9826);
INSERT INTO quiz (m_num, w_num, q_correct, q_percent) VALUES (2, 1, 0, 0);
INSERT INTO quiz (m_num, w_num, q_correct, q_percent) VALUES (3, 2, 0, 0);
INSERT INTO quiz (m_num, w_num, q_correct, q_percent) VALUES (3, 3, 1, 0.8826);
