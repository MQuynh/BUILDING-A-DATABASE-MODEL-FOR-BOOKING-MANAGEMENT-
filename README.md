# BUILDING-A-DATABASE-MODEL-FOR-BOOKING-MANAGEMENT
Use MySQL

● The appointment management system of a beauty center is intended to manage and store data and information related to service and appointment schedules to optimize the beauty center's operations. The system allows managers to capture all information of the center: Managers can track scheduling orders, customer information, employee information,... This helps managers to control revenue and appointment schedules. Besides, managers can monitor which services are popular and which services have few scheduled customers.

● Business description
  
  ○ For each customer (KHACHHANG), we will store the following information: unique customer code (MAKH), full name (HVT), date of birth (NGSINH), phone number (SDT), gender (GIOITINH), and email (EMAIL).
  
  ○ When scheduling beauty appointments, each customer will have a login account (LOGIN) for authentication. Each account will have a unique username (USERNAME), password (PASSWORD), and customer code (MAKH).
  
  ○ To provide loyalty benefits to loyal customers, customers will be categorized (PHANLOAIKH). Each customer category will have a category code (MALOAIKH), category type (LOAIKH), and discount level (GIAMGIA).
 
  ○ When customers make appointments, they can make multiple bookings at different time slots. Each booking (DONDATLICH) will belong to a single customer and will have information such as a unique appointment code (MALICHHEN), customer code (MAKH), and the date of the booking (NGAYDATLICH).
  
  ○ Each booking can have one or multiple appointment details.
 
  ○ Each appointment detail (CHITIETLICHHEN) will belong to a single booking and will include the appointment code (MALICHHEN) and a unique service count (SODV) to track the number of services in each booking detail. It will also store information about the service code (MADV), execution date (NGTHUCHIEN), and execution time (TGTHUCHIEN) for each service in the appointment detail.
  
  ○ Each employee will be assigned one or multiple bookings, and each booking can have multiple employees involved.
  
  ○ Each employee will have a specific skill, and multiple employees can have the same skill. We will have a skill code (MAKN) to store the skill name (TENKN).
  
  ○ Each skill corresponds to a service (DICHVU), and for each service, we have a service code (MADV), service name (TENDV), and information about the service price (GIATIEN).
  
  ○ We will store employee information as follows: unique employee code (MANV), full name (HOVATEN), gender (GIOI), date of birth (NGSINH), skill code (MAKN), and code of the managing employee (MANV_QL). We store information about the manager of each employee. The manager is also an employee.
  ○ Each employee will have a specific position, and multiple employees can have the same position. We have a position code (MAVITRI) to store the position name (TENVITRI).
# ERD 
![Thiết kế chưa có tên](https://github.com/MQuynh/BUILDING-A-DATABASE-MODEL-FOR-BOOKING-MANAGEMENT-/assets/120617972/9ffa2145-7850-4d19-9ca1-d2a2786b9083)
