-- [추가] 공식 이미지는 유저를 자동 생성하지 않으므로 직접 생성합니다.
CREATE USER springboot IDENTIFIED BY java1234;
GRANT CONNECT, RESOURCE TO springboot;
ALTER USER springboot DEFAULT TABLESPACE USERS QUOTA UNLIMITED ON USERS;

-- [수정] 이제 springboot 유저 소유로 테이블을 생성합니다.
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

commit;