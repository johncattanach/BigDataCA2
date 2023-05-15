use mysql;
drop table spotify;
create table spotify(
	name varchar(100),
	artist varchar(100),
	genre varchar(10),
	year int,
	duration_ms integer,
	danceability float,
	energy float,
	ikey int,
	imode int,
	loudness float,
	time_signature float );

load  data local infile 'MusicInfo.csv'
into table spotify
fields terminated by ','
ignore 1 lines
(@dummy,name,artist,@dummy,@dummy,@dummy,genre,
	year,duration_ms,danceability,energy,ikey,loudness,imode,
	@dummy,@dummy,@dummy,
	@dummy,@dummy,@dummy,time_signature) ;


