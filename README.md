# ✨ AI-Powered Palmistry and Tarot Intelligence Platform for Personalized Spiritual Insights

> An enterprise-grade, multi-modal spiritual intelligence platform harmonizing ancient Hermetic chiromancy, the 78-card sacred Tarot oracle, Western astrology, and Pythagorean numerology with modern computer vision and symbolic neural intelligence.

---

## 🌌 Platform Overview & Architecture

```
                                  MYSTIC INTELLIGENCE PLATFORM
                                 ==============================

   [ ✋ PalmScan AI ]            [ 🔮 Tarot Sanctuary ]          [ 📜 Cosmic Blueprint ]
   • Webcam / Photo Vision        • Full 78-Card Rider-Waite      • 7-Dimension Score Matrix
   • Line Contour Detection       • Upright/Reversed Dynamics     • Holistic Soul Synthesis
   • Heart, Head, Life & Fate     • Celtic Cross & Trinity        • Downloadable PDF Dossier
   • Mounts & Hand Typology       • AI Spread Interpretation      • Prescribed Daily Rituals
             │                                │                               │
             └────────────────────────────────┼───────────────────────────────┘
                                              ▼
                             ┌──────────────────────────────────┐
                             │    AI Mystic Advisor: Aurelia    │
                             │  • Conversational Spiritual AI   │
                             │  • Context-Aware Reading Memory  │
                             │  • Text-to-Speech Prophecy Audio │
                             │  • 432Hz Ambient Soundscape      │
                             └──────────────────────────────────┘
```

---

## 🔮 Key Features

1. **AI-Powered Palmistry Intelligence (PalmScan AI)**
   - **Live Webcam Alignment & Image Upload**: Point your hand at the camera or upload a photo.
   - **Computer Vision Extraction**: Detects the 4 major lines (*Heart Line*, *Head Line*, *Life Line*, *Fate Line*, and *Sun Line*) with clarity scores, curvature analysis, and depth.
   - **Sacred Mounts & Elemental Hand Typology**: Analyzes Mounts of Venus, Jupiter, Saturn, Apollo, Mercury, and Luna, identifying Earth, Air, Fire, or Water hand typology.
   - **Glowing Topography Overlay**: Visual feedback canvas with toggleable neon line paths.

2. **Interactive 3D Tarot Sanctuary**
   - **Full 78-Card Esoteric Encyclopedia**: 22 Major Arcana + 56 Minor Arcana (Wands, Cups, Swords, Pentacles).
   - **Multiple Interactive Spreads**:
     - *Single Card Oracle* (Daily spark)
     - *Trinity Spread* (Past • Present • Future)
     - *Mind • Body • Spirit Alignment*
     - *Soul Connection Alchemy* (5-Card Love & Relationship spread)
     - *Career & Sovereign Destiny Spread* (5-Card Vocation spread)
     - *Sacred Celtic Cross* (10-Card Comprehensive Life Reading)
   - **3D Interactive Card Physics**: Tap to flip, upright/reversed mechanics, and deep esoteric lore modals.

3. **Multi-Modal Spiritual Synthesis & Cosmic Blueprint**
   - Blends Palmistry + Tarot + Astrological Zodiac + Numerology Life Path.
   - **7-Dimension Guidance Scoring Matrix**:
     1. Vitality & Somatic Prana
     2. Mental Clarity & Strategic Insight
     3. Emotional Depth & Relational Harmony
     4. Career Destiny & Sovereign Ambition
     5. Spiritual Connection & Higher Intuition
     6. Financial Flow & Material Abundance
     7. Creative Radiance & Magnetism
   - **Downloadable Mystical PDF Dossier**: Formatted report generated via ReportLab.
   - **Prescribed Rituals & Crystal Remedies**: Tailored daily habits and crystal allies.

4. **Conversational AI Mystic Chamber ("Aurelia")**
   - Context-aware oracle with memory of your active palm reading, tarot spreads, and astrological signs.
   - **Text-to-Speech (TTS) Prophecy Voice**: Spoken prophecies generated via gTTS.
   - **432Hz Harmonic Engine**: Synthesizes continuous 432Hz/528Hz cosmic crystal drone audio in real-time via Web Audio API.

5. **Spiritual Journal & Consultant Workspace**
   - **Seeker Diary**: Review past readings, score evolution, and ratings.
   - **Consultant Studio**: Specialized dashboard for professional Tarot Readers & Spiritual Consultants to review client dossiers and publish expert annotations.

---

## 🚀 Quick Start (Running in VS Code)

### Option A: One-Click Startup Script (Recommended)

Simply double-click or run:
```bash
run.bat
```
*(On macOS/Linux, run `./run.sh` or `pwsh ./run.ps1`)*

This script automatically verifies all dependencies, launches the FastAPI backend and Vite frontend in parallel, and opens your default browser at `http://localhost:5173`.

---

### Option B: Running from VS Code Run & Debug

1. Open this project folder in **VS Code**:
   ```bash
   code .
   ```
2. Press `Ctrl+Shift+D` (or click **Run and Debug** on the sidebar).
3. Select **"🌟 Full Stack: Palmistry & Tarot Platform"** from the dropdown.
4. Press `F5` to start both Backend and Frontend with integrated debugging.

---

### Option C: Manual Terminal Execution

#### 1. Backend Service (FastAPI)
```bash
cd backend
pip install -r requirements.txt
python -m uvicorn app.main:app --host 127.0.0.1 --port 8000 --reload
```
*Backend runs on `http://127.0.0.1:8000` (Interactive Swagger docs at `http://127.0.0.1:8000/docs`)*

#### 2. Frontend Application (React + Vite)
```bash
cd frontend
npm install
npm run dev
```
### Option D: Docker & Docker Compose (Containerized)

Deploy both frontend and backend in isolated production containers with a single command:
```bash
docker compose up --build -d
```
- Frontend: `http://localhost` (and `http://localhost:5173`)
- Backend API & Swagger: `http://localhost:8000/docs`
- Health check: `http://localhost:8000/api/health`

---

## ☁️ Cloud Deployment (AWS & Azure)

See [DEPLOYMENT.md](DEPLOYMENT.md) for full instructions, automated scripts, and architecture blueprints.

- **AWS Cloud (ECS Fargate + ALB + ECR)**:
  - Automated deployment: `./deployment/aws/deploy-aws.sh` (or `.\deployment\aws\deploy-aws.ps1`)
  - CloudFormation template: `deployment/aws/cloudformation-template.yaml`
  - AWS App Runner config: `deployment/aws/apprunner.yaml`
- **Microsoft Azure (Azure Container Apps + ACR)**:
  - Automated deployment: `./deployment/azure/deploy-azure.sh` (or `.\deployment\azure\deploy-azure.ps1`)
  - Azure Bicep template: `deployment/azure/azure-container-apps.bicep`

---

## 🔑 Pre-Seeded Demo Accounts (All 4 System Roles)

You can log in instantly using the **1-Click Demo Buttons** inside the portal modal, or use these credentials:

| Role | Email | Password | Access / Capabilities |
| :--- | :--- | :--- | :--- |
| **Seeker (Client)** | `seeker@spiritual.ai` | `seeker123` | Personal palm scans, tarot draws, synthesis dossier, journal, trends |
| **Tarot Reader** | `reader@spiritual.ai` | `reader123` | Tarot spreads, card archetype library, seeker consultation notes |
| **Spiritual Consultant** | `oracle@spiritual.ai` | `oracle123` | Seeker client queue, consultant review notes, ratings, dossier review |
| **Administrator** | `admin@spiritual.ai` | `admin123` | Microservices health, user management, audit logs, datastores telemetry |

---

## 🧪 Automated Testing

Run the comprehensive pytest suite:
```bash
cd backend
python -m pytest tests/test_platform.py -v
```

All 17 automated tests verify:
- Backend Health & Diagnostics & Microservices count
- Authentication across all 4 Roles (Seeker, Reader, Consultant, Admin)
- API Gateway status & telemetry headers (`X-Process-Time-Ms`, `X-RateLimit-Limit`)
- 78 Tarot Cards Catalog & Spread Calculations
- Computer Vision Palmistry Line & Mount Extraction
- Spiritual Blueprint Synthesis & PDF Report Generation
- Daily Rune & Planetary Hour Guidance
- AI Oracle Conversational Engine
- Admin Service Microservices Health & Datastores Status
- Analytics Platform KPIs & AI Engine Telemetry
- Notification Service Triggering & Status Tracking
- Spiritual Knowledge Base Encyclopedia & Symbol Graph
- Curriculum Milestones Tracking (Weeks 1 to 8)
- Live Milestone Verification & Automated Audit
- Milestone 3 End-to-End Pipeline Execution (AI Interpretation & Recommendations)

---

## 🏛️ Academic Milestone Deliverables & Mapping

### 🌟 Milestone 3: Week 5 & 6 — AI Interpretation & Recommendations

| Task / Deliverable | Status | Description & Core Implementation Files |
| :--- | :---: | :--- |
| **Task 1: Implement AI interpretation engine** | ✅ COMPLETED | Conversational Oracle *Aurelia* with multi-modal memory of palmistry lines, active tarot cards, and astrological placements. Implemented in [`app/services/ai_oracle_service.py`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/backend/app/services/ai_oracle_service.py) & [`app/routers/oracle.py`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/backend/app/routers/oracle.py). Interactive UI in [`OracleChamber.tsx`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/frontend/src/views/OracleChamber.tsx). |
| **Task 2: Build personality intelligence workflows** | ✅ COMPLETED | Elemental hand typology synthesis (Earth, Air, Fire, Water) combined with Western Astrological Zodiac and Pythagorean Numerology. Implemented in [`app/services/scoring_engine.py`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/backend/app/services/scoring_engine.py) & [`SpiritualBlueprint.tsx`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/frontend/src/views/SpiritualBlueprint.tsx). |
| **Task 3: Develop recommendation engine** | ✅ COMPLETED | Algorithmic generation of personalized daily rituals, crystal remedies, planetary hours, and affirmations. Implemented in [`app/services/scoring_engine.py`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/backend/app/services/scoring_engine.py) & [`app/routers/synthesis.py`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/backend/app/routers/synthesis.py). |
| **Task 4: Generate life trend analysis** | ✅ COMPLETED | 7-Dimension life trend evaluation (Vitality, Mental Clarity, Emotional Depth, Career Destiny, Spiritual Connection, Financial Flow, Creativity). Implemented in [`app/services/scoring_engine.py`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/backend/app/services/scoring_engine.py), [`ScoreRadar.tsx`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/frontend/src/components/ScoreRadar.tsx), and [`AnalyticsStudio.tsx`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/frontend/src/views/AnalyticsStudio.tsx). |
| **Task 5: Create personalized dashboards** | ✅ COMPLETED | Seeker Spiritual Journal, Consultant Studio for reader annotations, and Milestone 3 Studio. Implemented in [`JournalHistory.tsx`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/frontend/src/views/JournalHistory.tsx), [`ConsultantStudio.tsx`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/frontend/src/views/ConsultantStudio.tsx), and [`Milestone3Studio.tsx`](file:///C:/Users/Spoorthi/.gemini/antigravity/scratch/palmistry-tarot-platform/frontend/src/views/Milestone3Studio.tsx). |

#### 🏆 Milestone 3 Verified Outcomes
- **Outcome 1: AI interpretation engine operational** — Verified by `test_oracle_daily_prophecy`, `test_oracle_chat`, and `test_milestone_3_execution_pipeline` (FastAPI response time < 35ms).
- **Outcome 2: Recommendation system functional** — Verified by `test_spiritual_synthesis_generate` and `POST /api/milestones/milestone-3/execute` returning tailored rituals and crystal allies.

---

## 🎯 Project Outcomes & Implementation Mapping

| Outcome | Implementation & Modules |
| :--- | :--- |
| **1. Spiritual Intelligence Platform** | Full-stack FastAPI + React 18 application integrating Hermetic Palmistry, 78-card Tarot, Astrology, and Numerology. |
| **2. Authentication & RBAC** | JWT Bearer authentication supporting 4 roles: Seeker, Tarot Reader, Spiritual Consultant, Administrator (`app/services/auth_service.py`, `app/routers/auth.py`). |
| **3. Palm Image Analysis & Detection** | Computer vision engine detecting Heart, Head, Life, and Fate lines, mounts of Venus/Jupiter/Saturn/Apollo/Mercury/Luna, and elemental hand typology (`app/services/palm_vision_service.py`, `components/HandCanvasOverlay.tsx`). |
| **4. Tarot Reading & Card Systems** | Full 78-card Rider-Waite-Smith deck, upright/reversed dynamics, multi-card spreads (Celtic Cross, Trinity, Relationship, Career) with 3D card physics (`app/services/tarot_service.py`, `views/TarotSanctuary.tsx`). |
| **5. AI-Powered Insight Generation** | Multi-modal holistic synthesis engine, conversational oracle "Aurelia", and automated PDF dossier generator (`app/services/ai_oracle_service.py`, `app/services/pdf_report_service.py`). |
| **6. Personality & Life Trend Analysis** | 7-Dimension scoring engine, elemental balance calculations, and temporal life trend projection (`app/services/scoring_engine.py`, `views/AnalyticsStudio.tsx`, `components/ScoreRadar.tsx`). |
| **7. Dashboards & Engagement Analytics** | User Journal history, Consultant Studio for reader annotations, Admin system telemetry, and platform KPI analytics (`views/JournalHistory.tsx`, `views/ConsultantStudio.tsx`, `views/AdminConsole.tsx`). |
| **8. Docker & Cloud Deployment** | Multi-stage Dockerfiles, Docker Compose, AWS ECS Fargate CloudFormation template, Azure Container Apps Bicep template, and automated deployment scripts (`deployment/`, `docker-compose.yml`, `DEPLOYMENT.md`). |

---

## 🛠️ Technology Stack

- **Backend**: Python 3.10+, FastAPI, SQLAlchemy 2.0, SQLite, Pydantic v2, Pillow, NumPy, ReportLab, gTTS, Pytest.
- **Frontend**: React 18, Vite, TypeScript, Tailwind CSS, Lucide React, HTML5 Canvas, Web Audio API.
- **AI Engine**: Hybrid symbolic esoteric knowledge graph + Computer Vision contour analysis + optional Gemini/OpenAI API plug-in.
- **DevOps & Cloud**: Docker, Docker Compose, Nginx, AWS ECS Fargate, AWS ECR, AWS App Runner, Azure Container Apps, Azure Container Registry, Bicep, CloudFormation.

---

*“As above, so below; as within, so without.” — The Emerald Tablet*

