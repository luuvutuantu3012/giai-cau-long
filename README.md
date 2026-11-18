# 🏸 Smash Open Cup - Quản Lý Giải Đấu Cầu Lông

Website chuyên nghiệp phục vụ quản trị, điều hành, cập nhật tỉ số trực tiếp và bốc thăm thi đấu cho các giải cầu lông phong trào & chuyên nghiệp.

---

## 🌟 Tính Năng Chính Của Website

1. **🏟️ Quản Lý Sân & Live Trực Tiếp:**
   - Theo dõi tình trạng từng sân thi đấu theo thời gian thực (đang thi đấu, chờ sân, tạm dừng, kết thúc).
   - Bảng điểm điện tử cho trọng tài chấm điểm trực tiếp từng set (11/15/21 điểm, đổi sân, điểm vàng/deuce).
   - Hiển thị trực quan cho khán giả theo dõi từ xa.

2. **🏃 Quản Lý Vận Động Viên & Đội:**
   - Danh sách VĐV, câu lạc bộ, số áo, phân loại hạng/trình độ.
   - Hỗ trợ nhập (Import) và xuất (Export) dữ liệu qua file Excel (`.xlsx`).

3. **🏆 Vòng Bảng & Nhánh Đấu Loại Trực Tiếp (Brackets):**
   - Tự động chia bảng, tính điểm số, hiệu số, đối đầu.
   - Vẽ cây nhánh đấu loại trực tiếp tự động theo chuẩn thi đấu.

4. **📅 Lịch Thi Đấu & Phân Sân:**
   - Sắp xếp thứ tự trận đấu theo ca/khung giờ.
   - Ban tổ chức phân sân linh hoạt theo tiến độ thực tế.

5. **👥 Phân Quyền Người Dùng:**
   - **Khán giả / Cổ động viên:** Xem lịch, xem bảng điểm live, xem nhánh đấu.
   - **Trọng tài:** Được cấp mã truy cập để cập nhật điểm số sân mình phụ trách.
   - **Ban tổ chức (Admin):** Toàn quyền cấu hình giải, chia bảng, xếp lịch, sửa kết quả.

6. **☁️ Đồng Bộ Dữ Liệu:**
   - Hỗ trợ đồng bộ đám mây qua Firebase Firestore (hoạt động đa thiết bị).
   - Cơ chế Fallback Offline lưu vào `localStorage` & `BroadcastChannel` khi mất kết nối mạng.

---

## 🚀 Hướng Dẫn Khởi Chạy Môi Trường Phát Triển

### Yêu Cầu Đã Cài Đặt Sẵn:
- **Node.js**: v26+ (đã có sẵn trên máy)
- **Vite Dev Server**: đã được cấu hình trong `package.json`

---

### Cách 1: Khởi động nhanh (Khuyên dùng trên Windows)
- Nhấp đúp chuột vào file **`start-dev.bat`** ở thư mục dự án.
- Trình duyệt sẽ tự động mở trang web tại `http://localhost:5173`.

---

### Cách 2: Dùng dòng lệnh (Terminal / PowerShell)

1. **Chạy server phát triển (Development):**
   ```bash
   npm run dev
   ```
   > Server sẽ chạy tại địa chỉ: `http://localhost:5173` (có tính năng Hot-Reload tự cập nhật khi sửa mã nguồn).

2. **Đóng gói dự án để đưa lên Hosting (Production Build):**
   ```bash
   npm run build
   ```
   > Sản phẩm đóng gói tối ưu sẽ nằm trong thư mục `dist/`.

3. **Xem thử bản đóng gói (Preview):**
   ```bash
   npm run preview
   ```

---

## 📁 Cấu Trúc Thư Mục

```
giai cau long/
├── index.html           # Toàn bộ mã nguồn giao diện, logic & style của ứng dụng
├── package.json         # Danh sách thư viện và tập lệnh (Vite dev server)
├── start-dev.bat        # Phím tắt 1-click khởi động nhanh trên Windows
├── .gitignore           # Danh sách loại trừ khi dùng Git
├── .vscode/             # Cấu hình khuyến nghị tiện ích mở rộng cho VS Code
└── README.md            # Tài liệu hướng dẫn sử dụng và phát triển
```

---

## ⚙️ Cấu Hình Firebase (Tùy Chọn)
Nếu bạn muốn sử dụng dự án Firebase riêng của giải đấu:
1. Mở file [index.html](file:///c:/Users/Admin/Desktop/giai%20cau%20long/index.html).
2. Tìm biến `envFirebaseConfig` (khoảng dòng 100-110).
3. Thay thế các thông số `apiKey`, `authDomain`, `projectId` bằng thông số từ Firebase Console của bạn.

---

## 💡 Đề Xuất Phát Triển Tiếp Theo

Tùy theo định hướng mở rộng của bạn, có thể phát triển theo 2 hướng:
- **Hướng 1 (Hiện tại - Gọn nhẹ, dễ bảo trì):** Giữ cấu trúc Single-Page Application với Vite. Rất dễ chỉnh sửa trực tiếp, không cần biên dịch phức tạp, tải trang cực nhanh.
- **Hướng 2 (Mở rộng thành dự án lớn đa lập trình viên):** Chuyển đổi mã nguồn sang cấu trúc Component hóa (React / Vue 3 + Tailwind CSS + TypeScript) để dễ dàng phân chia module và kiểm thử tự động.
