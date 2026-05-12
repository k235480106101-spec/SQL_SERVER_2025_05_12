Họ và tên: Lê Đức Vinh

Lớp: K59KMT.K01

MSSV: K235480106101

Môn Học: Hệ Quản Tri Cơ Sở Dữ Liệu

Nhiệm vụ 2: Cài đặt SQL (Yêu cầu viết Scripts)

Event 1: Đăng ký hợp đồng mới (Vay tiền)

Viết Store Procedure tiếp nhận hợp đồng: Lưu thông tin khách hàng, danh sách tài sản 
(kèm giá trị định giá), số tiền vay gốc và thiết lập 2 mốc Deadline1, Deadline2.

Bước 1 — Tạo Database
<img width="1928" height="1088" alt="image" src="https://github.com/user-attachments/assets/aef382ad-f5b2-42a4-a5bc-f4930e7f6486" />
Bước 2 _ Tạo Bảng
Bảng Customers
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/a08db8b1-449f-4940-9db6-f3ea8b83444a" />
Bảng Contracts
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/5b6a7018-f9c9-498b-8f27-b614d0b82745" />
Bảng Assets
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/c366a93c-aa2e-4b80-a6cb-c55e3cb801ff" />
Bảng ContractAssets
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/8afab5a2-3163-4bd7-b326-d77285dcedf9" />
Bảng Payments
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/c3b37e44-e19e-4d2d-a40c-989db05a51c4" />
Bảng ContractLogs
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/23413144-ecbd-4919-9f7e-3794157b498d" />
EVENT 1 — Procedure tạo hợp đồng
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/4705a8d1-e575-4a58-8a98-c0c54413a01a" />
EVENT 2 — Function tính nợ
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/1d51a8f5-c318-4ee9-a136-7b2645415bd5" />
EVENT 3 — Procedure trả nợ
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/52646ca8-10d2-4826-8cb4-14b0c7567102" />
EVENT 4 — Query nợ xấu
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/73804388-c8d6-4903-a8e4-f6b500deca0d" />
EVENT 5 — Trigger
Trigger 1
Nếu quá Deadline1:
Đang vay -> Quá hạn
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/a4303b57-1063-49fe-818e-311e70dac22a" />
Trigger 2
Nếu quá Deadline2:
Tài sản -> Sẵn sàng thanh lý
Trigger 3
Nếu hợp đồng = Đã thanh lý
BƯỚC 3 — Insert dữ liệu mẫu
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/c91b7868-cedd-414f-af78-cd141982f893" />
BƯỚC 4 — Test toàn bộ
Test tạo hợp đồng
<img width="1928" height="1088" alt="image" src="https://github.com/user-attachments/assets/33b3a9a0-3364-423c-bf69-ed2c680949de" />
Test tính nợ
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/e1e446c1-2711-48b8-8f04-8d4b4eb40206" />
Test trả tiền
<img width="1936" height="1096" alt="image" src="https://github.com/user-attachments/assets/f852cf93-fa63-4e6b-8390-a165a3d37432" />


















