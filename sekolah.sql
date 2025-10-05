create table siswa(
	id serial primary key,
	nama varchar,
	umur int,
	jurusan varchar
);

create table nilai(
	id serial primary key,
	siswa_id int references siswa (id),
	mata_pelajaran varchar,
	nilai int
);

insert into siswa (nama, umur, jurusan)
values ('Joko', 16, 'IPA'), 
       ('Mulyono', 17, 'IPA'), 
       ('Bambang', 16, 'IPA'), 
       ('Syahroni', 17, 'IPS'), 
       ('Alfin', 16, 'IPS');

insert into nilai (siswa_id, mata_pelajaran, nilai)
values (1, 'Bahasa Inggris', 88), 
       (2, 'Bahasa Inggris', 86), 
       (3, 'Bahasa Inggris', 89), 
       (4, 'Bahasa Inggris', 91), 
       (5, 'Bahasa Inggris', 88);

insert into nilai (siswa_id, mata_pelajaran, nilai)
values (1, 'Matematika', 84), 
       (2, 'Matematika', 85), 
       (3, 'Matematika', 82), 
       (4, 'Geografi', 88), 
       (5, 'Geografi', 86);

select * from siswa;
select * from siswa where jurusan = 'IPA';


SELECT -- hitung avg nilai
    siswa_id,
    AVG(nilai) AS rata_rata_nilai
FROM
    nilai
GROUP BY 
    siswa_id
ORDER BY
    siswa_id;


update siswa -- Update jurusan 'Joko' jadi 'IPS'
set
	jurusan = 'IPS'
where
	nama = 'Joko';


delete from nilai -- Delete nilai 'siswa_id' = 1 untuk 'mata_pelajaran' = 'Bahasa Inggris'
where
    siswa_id = 1 
    and mata_pelajaran = 'Bahasa Inggris';
