#!/usr/bin/env bash
# ==============================================================================
# Script tự động cấu hình môi trường Machine Learning (Độc lập mọi IDE)
# Hỗ trợ: VS Code, PyCharm, DataSpell, JupyterLab, Jupyter Notebook, Cursor,...
# ==============================================================================

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "======================================================================"
echo "🚀 [1/4] BẮT ĐẦU THIẾT LẬP MÔI TRƯỜNG THỰC HÀNH MACHINE LEARNING"
echo "======================================================================"

# 1. Kiểm tra Python
if command -v python3 &>/dev/null; then
    PYTHON_CMD="python3"
elif command -v python &>/dev/null; then
    PYTHON_CMD="python"
else
    echo "❌ Lỗi: Không tìm thấy Python trên hệ thống. Vui lòng cài đặt Python >= 3.10."
    exit 1
fi

PY_VERSION=$($PYTHON_CMD --version 2>&1)
echo "✅ Đã tìm thấy: $PY_VERSION"

# 2. Khởi tạo Virtual Environment (.venv)
echo ""
echo "📦 [2/4] Đang khởi tạo môi trường ảo (.venv)..."

# Ưu tiên sử dụng uv nếu có để tăng tốc độ cài đặt
if command -v uv &>/dev/null || [ -f "$HOME/.local/bin/uv" ]; then
    UV_BIN=$(command -v uv 2>/dev/null || echo "$HOME/.local/bin/uv")
    echo "⚡ Phát hiện uv package manager: $UV_BIN (cài đặt siêu tốc)"
    $UV_BIN venv --python 3.12 "$SCRIPT_DIR/.venv" || $UV_BIN venv "$SCRIPT_DIR/.venv"
    VENV_PYTHON="$SCRIPT_DIR/.venv/bin/python"
    
    echo ""
    echo "📥 [3/4] Đang cài đặt thư viện từ requirements.txt..."
    $UV_BIN pip install --python "$VENV_PYTHON" -r "$SCRIPT_DIR/requirements.txt"
else
    echo "ℹ️  Sử dụng chuẩn venv tiêu chuẩn của Python..."
    $PYTHON_CMD -m venv "$SCRIPT_DIR/.venv"
    VENV_PYTHON="$SCRIPT_DIR/.venv/bin/python"
    
    echo ""
    echo "📥 [3/4] Đang cài đặt thư viện từ requirements.txt..."
    "$VENV_PYTHON" -m pip install --upgrade pip
    "$VENV_PYTHON" -m pip install -r "$SCRIPT_DIR/requirements.txt"
fi

# 3. Đăng ký Kernel chuẩn cho Jupyter (Tương thích với TẤT CẢ IDEs)
echo ""
echo "⚙️  [4/4] Đăng ký Jupyter Kernel Spec hệ thống..."
"$VENV_PYTHON" -m ipykernel install --user --name machine-learning --display-name "Python 3 (Machine Learning)"

echo ""
echo "======================================================================"
echo "🎉 THIẾT LẬP HOÀN TẤT THÀNH CÔNG!"
echo "======================================================================"
echo "Môi trường ảo: $SCRIPT_DIR/.venv"
echo "Jupyter Kernel: 'Python 3 (Machine Learning)' (machine-learning)"
echo ""
echo "💡 Cách sử dụng trên các IDE / Trình soạn thảo:"
echo " 1. JupyterLab / Classic Notebook: Chạy lệnh 'jupyter lab' -> Chọn kernel 'Python 3 (Machine Learning)'"
echo " 2. PyCharm / DataSpell:         Cài đặt Python Interpreter -> Add Local Interpreter -> Chọn .venv"
echo " 3. VS Code / Cursor:            Mở file .ipynb -> Kernel tự động nhận diện hoặc chọn 'Python 3 (Machine Learning)'"
echo " 4. Terminal thuần:              Kích hoạt bằng 'source .venv/bin/activate'"
echo "======================================================================"
