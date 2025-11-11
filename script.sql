ALTER SESSION SET CURRENT_SCHEMA=SPRINGBOOT;

create table tblTeam (
    seq number primary key,
    name varchar2(100) not null unique,
    description varchar2(300) not null
);

create sequence seqTeam;

insert into tblTeam values (seqTeam.nextVal, '개발', '시스템 개발을 담당합니다.');
insert into tblTeam values (seqTeam.nextVal, 'DB', '데이터베이스를 담당합니다.');
insert into tblTeam values (seqTeam.nextVal, '운영', '구축된 시스템의 유지보수를 담당합니다.');
insert into tblTeam values (seqTeam.nextVal, '영업', '진행중인 프로젝트를 관리합니다.');
insert into tblTeam values (seqTeam.nextVal, '보안', '시스템의 보안을 담당합니다.');

select * from tblTeam;

SELECT * FROM ALL_USERS;

commit;
