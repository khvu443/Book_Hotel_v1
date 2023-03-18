# Book_Hotel_v1

## Requirement Enviroment
```
tomcat 10
jdk 18
maven 3.8.5 or latest
```
###### Link tải và hướng dẫn
[JDK 18](https://www.oracle.com/java/technologies/javase/jdk18-archive-downloads.html)
[Mavne 3.8.5](https://maven.apache.org/download.cgi)
[Huong dan cai maven](https://www.youtube.com/watch?v=qPkrvIGUvtU)
-Sau khi cài xong maven, chạy lệnh trên CMD
```
mvn -version
```
[tomcat10](https://tomcat.apache.org/download-10.cgi)
[Cách để config server tomcat 10 cho netbeans](https://www.youtube.com/watch?v=KnkKZ2zDfIM)

## Before Run Application
- DB chạy thì sẽ tự thêm dữ liệu vào - SQL script ko có dữ liệu mà chỉ có tạo 
  -Dữ liệu account
  id| username| password| name|role | status
  --|---------|---------|-----|-----|-------
  1 | sang43 |	1234 |	Nguyen Van sang |	1	| 1
  2 |	NVA    |1234	 |  Nguyen Van A	| 2 |	1
  
  - Dữ liệu hotel
  
  id| hotel name        | address   | image         |number rooms | amount | type
  --|-------------------|----------|----------------|-------------|--------|----------
  1 | Muong Thanh Hotel |	Dan Nang |	img/hotel.jpg |	30	        | 900.00 | Khach San

 
   - Dữ liệu order
   
  id| accountID | hotelID| address        | check_in    |check_out    | guests |rooms |money
  --|----------|---------|----------------|-------------|-------------|--------|------|--------
  1 | 7        |	10     |	Da Nang       |2023-03-23	  | 2023-03-28  |5       |5     |75000.00

  
    - Dữ liệu role
    
  id| role|
  --|---------
  1 | User 
  2 |	    Staff
  
- Nhớ sửa lại thông tin bên trong file ConnectSQL thành của 

## Roles trong DB
-Staff:
  - Có thể thêm, sửa thông tin khách sạn
  - Có thể thêm account staff
  - Xem hết toàn bộ account của cả staff và user nhưng ko thể xem password
  - Có thể thể xem hết các order
  - ko thể đặt phòng, ko thể thay đổi thông tin account của người khác
-User:
  - Có thể đặt phòng
  - chỉ có thể xem đc order của chính mình
