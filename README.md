# LaptopStore

Đây là một ứng dụng web được xây dựng cho cửa hàng laptop.
# Cài đặt
## Cài đặt XAMPP
Bước 1: Tải file cài đặt XAMPP tại: [www.apachefriends.org/download.html](https://www.apachefriends.org/download.html).<br>
Bước 2: Tới trang download và chọn phiên bản tải về<br>
Bước 3: Sau khi tải về, mở file .exe chạy. (Tránh cài đặt XAMPP vào thư mục C:\Program Files). Chọn cài đặt toàn bộ các component của XAMPP.<br>
Bước 4: Xác nhận địa chỉ thư mục đích là C:\xampp. Sau đó cài đặt tiếp.<br>
Bước 5: Chờ quá trình tải về hoàn tất. Nhấn Finish, một hộp thoại hiện lên hỏi có muốn mở XAMPP Control Panel hay không. Lúc này quá trình cài đặt đã hoàn tất.
## Cài đặt vị trí cho source code
Bước 1: Clone repository này.<br>
Bước 2: Copy thư mục Laptrinhweb sang thư mục C:\xampp\htdocs
# Chạy chương trình
## Chạy XAMPP server
Bước 1: Nhấp chuột phải vào biểu tượng XAMPP, chọn 'Run as administrator'<br>
Bước 2: Ở hai module service Apache và Mysql nhấn Start
## Import database
Bước 1: Mở trình duyệt web bất kì<br>
Bước 2: Truy cập vào [localhost/phpmyadmin/](http://localhost/phpmyadmin/)<br>
Bước 3: Trên thanh công cụ, chọn Nhập hoặc Import<br>
Bước 4: Nhấn Chọn tệp và chọn file weblaptop.sql tron repository, sau đó nhấn thực hiện
## Mở trang web
Truy cập vào [localhost/Laptrinhweb](http://localhost/Laptrinhweb/) để mở trang web
# Tính năng
Khách hàng: Xem danh mục hàng hóa, giỏ hàng, đặt hàng<br>
Admin: Quản lí danh mục hàng hóa, quản lý tài khoản, quản lý đơn hàng
# Truy cập vào trang admin
Đăng nhập bằng tài khoản admin:<br>
```
Email: a@hcn.ade
Mật khẩu: 123456
```
Mở dropdown list bên cạnh tên người dùng, chọn quản lý trang web. Trình duyệt sẽ mở trang admin.<br>
Trong trang admin, nhấn nút LaptopStore để trở lại trang chủ
