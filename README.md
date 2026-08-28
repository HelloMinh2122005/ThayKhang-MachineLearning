# 📘 Machine Learning Practical Course (Thực Hành Machine Learning)

Kho tài liệu và mã nguồn thực hành toàn diện về **Machine Learning cơ bản đến nâng cao**, bao gồm 16 chuyên đề chuẩn mực: từ các bài toán Hồi quy (Regression), Phân lớp (Classification) đến Đánh giá & Tối ưu mô hình.

Mỗi chuyên đề được tổ chức độc lập với đầy đủ **Slide bài giảng (PDF)**, **Jupyter Notebook (`notebook.ipynb`)** và **Tập dữ liệu thực tế (`.csv`)**.

---

## 📑 Mục lục & Danh mục 16 Chuyên đề

| STT | Chuyên đề | Thể loại | Mô hình & Thuật toán chính | Dataset |
| :---: | :--- | :---: | :--- | :--- |
| **01** | [Tổng quan Machine Learning](./01%20-%20T%E1%BB%95ng%20quan%202022-07-13) | Pipeline | Linear Reg, Logistic Reg, K-Means | Synthetic Data |
| **02** | [Hồi quy Tuyến tính Đơn biến](./02%20-%20H%E1%BB%93i%20Quy%20Tuy%E1%BA%BFn%20T%C3%ADnh%20%C4%90%C6%A1n%20Bi%E1%BA%BFn%202022%20-%2007%20-13) | Regression | Simple Linear Regression ($y = w_1x + w_0$) | `Salary_Data.csv` |
| **03** | [Hồi quy Tuyến tính Đa biến](./03%20-%20H%E1%BB%93i%20Quy%20Tuy%E1%BA%BFn%20T%C3%ADnh%20%C4%90a%20Bi%E1%BA%BFn%202022%20-%2007%20-21) | Regression | Multiple Linear Regression, One-Hot Encoding | `50_Startups.csv` |
| **04** | [Hồi quy Đa thức](./04%20-%20H%E1%BB%93i%20Quy%20%C4%90a%20Th%E1%BB%A9c%202022%20-%2007%20-21) | Regression | Polynomial Features ($d=2, 3, 4$) | `Position_Salaries.csv` |
| **05** | [Hồi quy SVR](./05%20-%20H%E1%BB%93i%20quy%20SVR%202023%20-%2010%20-%2001) | Regression | Support Vector Regression (Kernel RBF, $\epsilon$-tube) | `Position_Salaries.csv` |
| **06** | [Hồi quy Cây Quyết định](./06%20-%20H%E1%BB%93i%20quy%20C%C3%A2y%20Quy%E1%BA%BFt%20%C4%90%E1%BB%8Bnh%202023%20-%2009%20-%2020) | Regression | Decision Tree Regressor (Phân vùng bậc thang) | `Position_Salaries.csv` |
| **07** | [Hồi quy Rừng ngẫu nhiên](./07%20-%20H%E1%BB%93i%20quy%20R%E1%BB%ABng%202023%20-%2009%20-20) | Regression | Random Forest Regressor (Ensemble Bagging) | `Position_Salaries.csv` |
| **08** | [Đánh giá Mô hình Hồi quy](./08%20-%20%C4%90%C3%A1nh%20gi%C3%A1%20M%C3%B4%20h%C3%ACnh%20H%E1%BB%93i%20Quy%202023%20-%2009%20-%2020) | Evaluation | MAE, MSE, RMSE, $R^2$, Adjusted $R^2$ | `50_Startups.csv` |
| **09** | [Bài toán Phân lớp Dữ liệu](./09%20-%20B%C3%A0i%20to%C3%A1n%20Ph%C3%A2n%20l%E1%BB%9Bp%20d%E1%BB%AF%20li%E1%BB%87u%202023%20-%2010%20-%2017) | Classification | Confusion Matrix, Precision, Recall, F1, ROC-AUC | `Social_Network_Ads.csv` |
| **10** | [K-Nearest Neighbors (KNN)](./10%20-%20K%20NEAREST%20NEIGHBORS%202023%20-%2010%20-%2017) | Classification | KNN Classifier (Distance Metric: Euclidean, Manhattan) | `Social_Network_Ads.csv` |
| **11** | [Hồi quy Logistic](./11%20-%20H%E1%BB%93i%20quy%20Logistic%202023%20-%2010%20-%2017) | Classification | Logistic Regression, Sigmoid Function, Odds Ratio | `Social_Network_Ads.csv` |
| **12** | [Naive Bayes](./12%20-%20Naive%20Bayes%202023%20-%2010%20-%2024) | Classification | Gaussian Naive Bayes (Định lý Bayes, Xác suất hậu nghiệm) | `Social_Network_Ads.csv` |
| **13** | [Support Vector Machine (SVM)](./13%20-%20SVM%202023%20-%2010%20-%2024) | Classification | Linear SVM (Siêu phẳng phân chia, Margin cực đại) | `Social_Network_Ads.csv` |
| **14** | [Kernel SVM](./14%20-%20Kernel%20SVM%202023%20-%2010%20-%2024) | Classification | Non-linear SVM (Kernel Trick: RBF, Poly, Sigmoid) | `Social_Network_Ads.csv` |
| **15** | [Cây Quyết định (Decision Tree)](./15%20-%20Decision%20Tree%202023%20-%2011%20-%2007) | Classification | Decision Tree Classifier (Gini Impurity, Entropy) | `Social_Network_Ads.csv` |
| **16** | [Rừng Ngẫu nhiên (Random Forest)](./16%20-%20Random%20Forest%20Classification%202023%20-%2011%20-%2007) | Classification | Random Forest Classifier, Feature Importance, OOB Score | `Social_Network_Ads.csv` |

---

## 🚀 Hướng dẫn Cài đặt & Bắt đầu Nhanh (Quickstart)

### 1. Yêu cầu hệ thống
- **Python**: Phiên bản `>= 3.10` (Khuyến nghị **Python 3.11** hoặc **Python 3.12**).
- **VS Code** (hoặc Jupyter Lab / Jupyter Notebook).

### 1. Cài đặt tự động trong 1 lệnh (Universal Setup Script)

Dự án cung cấp sẵn script [`setup.sh`](./setup.sh) tự động hóa toàn bộ quy trình: tạo `.venv`, cài thư viện và đăng ký **Jupyter Kernel Spec** toàn cục cho mọi IDE:

```bash
./setup.sh
```

---

### 2. Cài đặt thủ công (Nếu không dùng script)

```bash
# 1. Tạo môi trường ảo
python3 -m venv .venv

# 2. Kích hoạt môi trường ảo
source .venv/bin/activate    # Linux / macOS
# .venv\Scripts\activate     # Windows

# 3. Cài đặt toàn bộ thư viện
pip install -r requirements.txt

# 4. Đăng ký Kernel chuẩn Jupyter (Nhận diện trên MỌI IDE)
python -m ipykernel install --user --name machine-learning --display-name "Python 3 (Machine Learning)"
```

---

### 3. Hướng dẫn sử dụng trên các IDE & Nền tảng khác nhau

Sau khi chạy `./setup.sh`, Kernel **`Python 3 (Machine Learning)`** đã được đăng ký vào hệ thống chuẩn của Jupyter:

| IDE / Trình soạn thảo | Cách sử dụng |
| :--- | :--- |
| **VS Code / Cursor** | Mở bất kỳ file `notebook.ipynb` $\to$ Kernel tự động được chọn (hoặc chọn `Python 3 (Machine Learning)` ở góc phải) $\to$ Nhấn **Run All** (▶️). |
| **PyCharm / DataSpell** | Vào *Settings* $\to$ *Project: MachineLearning* $\to$ *Python Interpreter* $\to$ Chọn đường dẫn interpreter tại `.venv/bin/python`. |
| **JupyterLab / Classic Notebook** | Chạy `jupyter lab` hoặc `jupyter notebook` $\to$ Mở notebook $\to$ Kernel `Python 3 (Machine Learning)` sẽ xuất hiện trong menu chọn kernel. |
| **Terminal / CLI thuần** | Kích hoạt môi trường bằng lệnh `source .venv/bin/activate` và chạy các script Python bình thường. |


---

## 📦 Hệ sinh thái Thư viện Sử dụng

- **`scikit-learn`** (v1.4+): Thư viện học máy cốt lõi (Linear models, Tree, Ensembles, Metrics, Preprocessing).
- **`numpy`** & **`pandas`**: Thao tác cấu trúc dữ liệu bảng, ma trận và tiền xử lý.
- **`matplotlib`** & **`seaborn`**: Trực quan hóa dữ liệu thống kê, đường ranh giới quyết định (Decision Boundary), ma trận nhầm lẫn (Confusion Matrix).
- **`scipy`**: Các hàm tính toán tối ưu và phân phối xác suất nâng cao.
- **`ipykernel`**: Hỗ trợ thực thi mã tương tác trong môi trường Notebook.

---

## 📂 Cấu trúc Repository

```text
MachineLearning/
├── 01 - Tổng quan 2022-07-13/
│   ├── 01 - Tổng quan 2022-07-13.pdf
│   └── notebook.ipynb
├── 02 - Hồi Quy Tuyến Tính Đơn Biến 2022 - 07 -13/
│   ├── 02 - Hồi Quy Tuyến Tính Đơn Biến 2022 - 07 -13.pdf
│   ├── Salary_Data.csv
│   └── notebook.ipynb
...
├── 16 - Random Forest Classification 2023 - 11 - 07/
│   ├── 16 - Random Forest Classification 2023 - 11 - 07.pdf
│   ├── Social_Network_Ads.csv
│   └── notebook.ipynb
├── .gitignore
├── requirements.txt
└── README.md
```
