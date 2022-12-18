program mendataMahasiswa;
uses crt,wincrt;
procedure totalNilai(nilai1:real; nilai2:real; nilai3:real; nilai4:real; nilai5:real; nilai6:real; var hasil:char);
	var 
	Nilai: real;
	begin
	Nilai := (nilai1 + nilai2 + nilai3 + nilai4 + nilai5 + nilai6) / 6;
	if Nilai >= 3.5 then
	begin
	hasil := 'A';
	end
	else 
	if Nilai >= 3 then
	begin
	hasil := 'B';
	end
	else 
	if Nilai >= 2.5 then
	begin
	hasil := 'C';
	end
	else
	if Nilai >= 2.0 then
	begin
	hasil := 'D';
	end
	else
	if Nilai >= 1.5 then
	begin	
	hasil:= 'F';
	end
	else
	begin
	hasil := 'N';
	end;
end;
//type dan variabel pembuka
type

time = record
tanggal:1..31;
bulan:1..12;
tahun:1900..2022;
end;

Biodata = record
nama:string;
NIM:longint;
Kom:char;
Date:time;
end;

var
data:array [1..10] of Biodata;
i,n:integer;
sisdig,tbo,oak,matdas,daspro,pik:real;
hasil:char;
//tipe dan variabel penutup
begin //tidak memakai with agar lebih mudah mengingat

writeln('Program data menghitung total IP yang di dapatkan untuk mahasiswa Semester 1 S1 Ilmu Komputer');
write('Masukkan berapa data mahasiswa ingin dimasukkan : '); readln(n);
for i := 1 to n do
	begin
	with data[i] do 
	begin
	writeln('data mahasiswa ke-',i);
		write('Masukkan nama anda 				: '); readln(nama);
		write('Masukkan NIM anda 				: '); readln(NIM);
		write('Masukkan Kom anda (a-b-c)			: '); readln(Kom);
	with date do
	begin
		writeln('Isi tanggal-bulan-tahun saat ini');
		write('Masukkan Tanggal saat ini (1-31) 			        :	');readln(tanggal);
		write('Masukkan Bulan saat ini   (1-12) 			        :	');readln(bulan);
		write('Masukkan Tahun saat ingin (0-2022)			:	');readln(tahun);
		writeln('Isi nilai mata kuliah anda disini dengan range (1-4)');
		write('Masukkan nilai mata kuliah Sistem-Digital 			:	 '); readln(sisdig);
		write('Masukkan nilai mata kuliah TBO			 		:	 '); readln(tbo);
		write('Masukkan nilai mata kuliah OAK			 		:	 '); readln(oak);
		write('Masukkan nilai mata kuliah Matdas		 		:	 '); readln(matdas);
		write('Masukkan nilai mata kuliah daspro		 		:	 '); readln(daspro);
		write('Masukkan nilai mata kuliah pik			 		:	 '); readln(pik);
		totalNilai(sisdig,tbo,oak,matdas,daspro,pik,hasil);
		end;
	end;
end;			
for i := 1 to n do
	begin
		with data[i] do
		begin
		writeln('hasil data mahasiswa ke-',i);
		writeln('Nama 		: ',nama);
		writeln('Nim		        : ',nim);
		writeln('KOM 		: ',Kom);
		with date do 
		begin
		writeln('=================================');
		writeln('Date ',tanggal,'-',bulan,'-',tahun);
		writeln('=================================');
		writeln('Nilai sisdig 			- ',sisdig:4:2);
		writeln('Nilai TBO 			- ',tbo:4:2);
		writeln('Nilai OAK 			- ',Oak:4:2);
		writeln('Nilai matdas 			- ',matdas:4:2);
		writeln('Nilai daspro 			- ',daspro:4:2);
		writeln('Nilai pik 			        - ',pik:4:2);
		writeln('=================================');
		writeln('Nilai Ip adalah 		- ', hasil);
		readln;
		end;
	end;
end;	
end.
