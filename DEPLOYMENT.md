# 🐳 Containerization & Cloud Deployment Guide
## Palmistry & Tarot Intelligence Platform

This guide provides end-to-end instructions for deploying the **Palmistry & Tarot Intelligence Platform** locally using Docker Compose, on **Amazon Web Services (AWS)** using ECS Fargate / App Runner, and on **Microsoft Azure** using Azure Container Apps.

---

## 🏛️ Deployment Architecture

```
                       [ Internet Users / Seekers ]
                                    │
                                    ▼
       [ Cloud Load Balancer / Ingress / Application Gateway ]
                     (Port 80 / 443 with SSL/TLS)
                                    │
                  ┌─────────────────┴─────────────────┐
                  ▼                                   ▼
        [ Frontend Container ]              [ Backend Container ]
         • Nginx 1.25 Alpine                 • FastAPI / Python 3.11
         • React 18 + Vite SPA               • OpenCV Computer Vision
         • Static Assets Caching             • Symbolic AI Engine
         • Reverse Proxy (/api, /uploads)    • ReportLab PDF Generator
                  │                                   │
                  └─────────────────┬─────────────────┘
                                    ▼
                          [ Persistent Volume ]
                       • /app/uploads (Palm Images, Audio)
                       • /app/generated_reports (PDFs)
                       • /app/data (SQLite / PostgreSQL)
```

---

## 🚀 1. Local Deployment with Docker Compose

### Prerequisites
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (v24.0+)
- [Docker Compose](https://docs.docker.com/compose/) (v2.20+)

### Step-by-Step Instructions

1. **Clone or Navigate to the Platform Directory:**
   ```bash
   cd palmistry-tarot-platform
   ```

2. **(Optional) Configure Environment Variables:**
   Create a `.env` file in the root directory if you wish to override default secrets or enable external AI model providers:
   ```env
   SECRET_KEY=your-custom-production-jwt-secret-key-32chars
   OPENAI_API_KEY=sk-...               # Optional
   GEMINI_API_KEY=AIzaSy...           # Optional
   ```

3. **Build and Run Containers:**
   ```bash
   docker compose up --build -d
   ```

4. **Verify Container Health:**
   ```bash
   docker compose ps
   ```
   Both `mystic-backend` and `mystic-frontend` should report status `Up (healthy)`.

5. **Access the Application:**
   - **Frontend Web UI**: [http://localhost](http://localhost) (or [http://localhost:5173](http://localhost:5173))
   - **Interactive API Documentation (Swagger)**: [http://localhost:8000/docs](http://localhost:8000/docs)
   - **Backend Health Check**: [http://localhost:8000/api/health](http://localhost:8000/api/health)

6. **Stopping the Platform:**
   ```bash
   docker compose down
   # To remove volumes as well:
   docker compose down -v
   ```

---

## ☁️ 2. Cloud Deployment on Amazon Web Services (AWS)

### Option A: AWS ECS Fargate via CloudFormation (Recommended)

1. **Prerequisites**:
   - AWS CLI configured with administrator credentials (`aws configure`)
   - Docker installed locally

2. **Execute Automated Deployment Script**:
   On Linux / macOS:
   ```bash
   chmod +x ./deployment/aws/deploy-aws.sh
   ./deployment/aws/deploy-aws.sh
   ```
   On Windows (PowerShell):
   ```powershell
   ./deployment/aws/deploy-aws.ps1 -AwsRegion "us-east-1"
   ```

3. **Deploy Infrastructure via CloudFormation**:
   ```bash
   aws cloudformation create-stack \
     --stack-name mystic-platform-prod \
     --template-body file://deployment/aws/cloudformation-template.yaml \
     --parameters \
       ParameterKey=EnvironmentName,ParameterValue=prod \
       ParameterKey=BackendImageUri,ParameterValue=<ACCOUNT_ID>.dkr.ecr.us-east-1.amazonaws.com/mystic-backend:latest \
       ParameterKey=FrontendImageUri,ParameterValue=<ACCOUNT_ID>.dkr.ecr.us-east-1.amazonaws.com/mystic-frontend:latest \
     --capabilities CAPABILITY_NAMED_IAM
   ```

4. **Obtain Load Balancer URL**:
   ```bash
   aws cloudformation describe-stacks \
     --stack-name mystic-platform-prod \
     --query "Stacks[0].Outputs[?OutputKey=='LoadBalancerDNS'].OutputValue" \
     --output text
   ```

---

### Option B: AWS App Runner (Fastest Single-Service Backend)

1. Connect your GitHub repository to AWS App Runner.
2. Select runtime configuration using `deployment/aws/apprunner.yaml`.
3. Set Port to `8000` and start the automated deployment.

---

## ☁️ 3. Cloud Deployment on Microsoft Azure

### Option: Azure Container Apps with Bicep

1. **Prerequisites**:
   - Azure CLI logged in (`az login`)

2. **Execute Automated Deployment Script**:
   On Linux / macOS:
   ```bash
   chmod +x ./deployment/azure/deploy-azure.sh
   ./deployment/azure/deploy-azure.sh
   ```
   On Windows (PowerShell):
   ```powershell
   ./deployment/azure/deploy-azure.ps1 -ResourceGroup "rg-mystic-prod" -Location "eastus"
   ```

3. **Retrieve Application URLs**:
   ```bash
   az deployment group show \
     --resource-group rg-mystic-prod \
     --name azure-container-apps \
     --query "properties.outputs.frontendFqdn.value" \
     --output tsv
   ```

---

## 🔒 4. Production Security & Hardening Checklist

| Area | Recommended Setting | Status / Configuration |
| :--- | :--- | :--- |
| **JWT Secrets** | Set 256-bit entropy `SECRET_KEY` in environment | Implemented via `Settings.SECRET_KEY` |
| **HTTPS / TLS** | Terminate SSL at AWS ALB / Azure Ingress | Enabled in CloudFormation & Bicep |
| **CORS Policy** | Restrict `BACKEND_CORS_ORIGINS` to trusted domains | Configurable via `.env` |
| **Data Persistence** | Mount EFS / Azure Files volume for uploads & SQLite/Postgres | Volume mapping in compose & bicep |
| **Rate Limiting** | 120 requests/minute per client IP | Built into FastAPI Gateway Middleware |
| **Content Security** | X-Frame-Options, X-Content-Type-Options, X-XSS | Enforced in `frontend/nginx.conf` |

---

## 🧪 5. Post-Deployment Verification

After deploying, run the automated health check:
```bash
curl -f https://<YOUR_DEPLOYED_URL>/api/health
```

Expected JSON response:
```json
{
  "status": "healthy",
  "database": "connected",
  "tarot_engine": "78_cards_loaded",
  "palm_vision": "ready",
  "oracle_ai": "active",
  "microservices_count": 12,
  "ai_models_count": 8
}
```
