GRANT ALL PRIVILEGES ON lottery.* TO 'frank'@'localhost';

create table coupon(
   coupon_id INT NOT NULL AUTO_INCREMENT,
   coupon_serial_number VARCHAR(100) NOT NULL,
   coupon_status VARCHAR(10) NOT NULL DEFAULT '0',
   coupon_update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY ( coupon_id )
);

create table award(
   award_id INT NOT NULL AUTO_INCREMENT,
   award_name VARCHAR(100) NOT NULL,
   award_serial_number VARCHAR(100) NOT NULL,
   award_status VARCHAR(10) NOT NULL DEFAULT '0',
   award_update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY ( award_id )
);

select * from coupon;

select * from award;

insert into coupon (coupon_serial_number) values('a123');
insert into coupon (coupon_serial_number) values('b123');
insert into coupon (coupon_serial_number) values('c123');
insert into coupon (coupon_serial_number) values('d123');
insert into coupon (coupon_serial_number) values('e123');
insert into coupon (coupon_serial_number) values('f123');
insert into coupon (coupon_serial_number) values('g123');
insert into coupon (coupon_serial_number) values('h123');
insert into coupon (coupon_serial_number) values('i123');
insert into coupon (coupon_serial_number) values('j123');

insert into award (award_name , award_serial_number) values('PS5','aaaaa');
insert into award (award_name , award_serial_number) values('鼎泰瘋餐券','bbbbb');
insert into award (award_name , award_serial_number) values('鼎泰瘋餐券','ccccc');
insert into award (award_name , award_serial_number) values('鼎泰瘋餐券','ddddd');
insert into award (award_name , award_serial_number) values('冬風衛生紙','eeeee');
insert into award (award_name , award_serial_number) values('冬風衛生紙','fffff');
insert into award (award_name , award_serial_number) values('冬風衛生紙','ggggg');
insert into award (award_name , award_serial_number) values('冬風衛生紙','hhhhh');
insert into award (award_name , award_serial_number) values('冬風衛生紙','iiiii');
insert into award (award_name , award_serial_number) values('冬風衛生紙','jjjjj');

update coupon set coupon_status='0' ,coupon_update_time = now();
update award set award_status='0', award_update_time = now();

SET SQL_SAFE_UPDATES = 0; 
SELECT @@AUTOCOMMIT;

commit;
