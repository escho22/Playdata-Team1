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
		q_percent                     		INT(1)		 DEFAULT 0		 NULL  COMMENT '일치도',
		q_date                        		DATETIME		 DEFAULT now()		 NOT NULL COMMENT '퀴즈푼날',
  FOREIGN KEY (m_num) REFERENCES member (m_num),
  FOREIGN KEY (w_num) REFERENCES word (w_num)
) COMMENT='퀴즈';


INSERT INTO member (m_id, m_pw, m_name, m_birth, m_sex, m_email, m_is_admin) VALUES ('admin', 1234, '관리자1', '2021-05-03', 0, 'mattmingyu@gamil.com', 1);
INSERT INTO member (m_id, m_pw, m_name, m_birth, m_sex, m_email) VALUES ('test1', 1234, '테스트계정', '2002-06-04', 0, '2002@피파.com');
INSERT INTO member (m_id, m_pw, m_name, m_birth, m_sex, m_email) VALUES ('test2', 1234, '테스트계정2', '2002-06-10', 1, '2002@한국축협.com');

