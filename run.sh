#!/usr/bin/env bash
echo "========================================================================="
echo "      PALMISTRY & TAROT INTELLIGENCE PLATFORM (SPIRITUAL INSIGHTS)       "
echo "========================================================================="
echo ""

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Start backend
echo "[*] Launching Backend on http://127.0.0.1:8000..."
cd "$SCRIPT_DIR/backend"
python3 -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload &
BACKEND_PID=$!

# Start frontend
echo "[*] Launching Frontend on http://localhost:5173..."
cd "$SCRIPT_DIR/frontend"
npm run dev &
FRONTEND_PID=$!

trap "kill $BACKEND_PID $FRONTEND_PID" EXIT
wait
