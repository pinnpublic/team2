-- [수정됨] springboot 스키마로 변경 시도
-- WHENEVER SQLERROR는 이 블록 안에서만 유효함
BEGIN
  EXECUTE IMMEDIATE 'ALTER SESSION SET CURRENT_SCHEMA=springboot';
EXCEPTION
  WHEN OTHERS THEN
    -- ORA-01435 (user does not exist) 오류 등이 발생해도 무시
    NULL;
END;
/

-- [중요] 만약 ALTER SESSION이 실패했더라도,
-- 스크립트 실행 시점에는 유저가 생성되었을 수 있으므로
-- 테이블 이름 앞에 `springboot.`를 명시적으로 붙여서 생성합니다.

create table springboot.tblTeam (
    seq number primary key,
    name varchar2(100) not null unique,
    description varchar2(300) not null
);

create sequence springboot.seqTeam;

insert into springboot.tblTeam values (springboot.seqTeam.nextVal, '개발', '시스템 개발을 담당합니다.');
insert into springboot.tblTeam values (springboot.seqTeam.nextVal, 'DB', '데이터베이스를 담당합니다.');
insert into springboot.tblTeam values (springboot.seqTeam.nextVal, '운영', '구축된 시스템의 유지보수를 담당합니다.');
insert into springboot.tblTeam values (springboot.seqTeam.nextVal, '영업', '진행중인 프로젝트를 관리합니다.');
insert into springboot.tblTeam values (springboot.seqTeam.nextVal, '보안', '시스템의 보안을 담당합니다.');

-- 확인용 SELECT 문은 CI/CD에서 문제를 일으킬 수 있으니 제거합니다.
-- select * from tblTeam;
-- SELECT * FROM ALL_USERS;

commit;