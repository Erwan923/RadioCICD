<div align="center">
  <img src="radiocicd-logo.png" alt="RadioCICD Logo" width="280"/>
  
  # 📡 RadioCICD
  
  ### *CI/CD Pipeline for Radio Frequency Testing*
  
  <p align="center">
    <em>DevOps meets RF Engineering</em><br>
    Complete containerized solution for automated RF testing
  </p>
  
  ![CI/CD](https://img.shields.io/badge/CI%2FCD-Automated-brightgreen?style=for-the-badge&logo=jenkins)
  ![On-Premise](https://img.shields.io/badge/ON--PREMISE-100%25-purple?style=for-the-badge&logo=server)
  ![Containerized](https://img.shields.io/badge/Containerized-Docker-blue?style=for-the-badge&logo=docker)
</div>

---

## 🎯 **What is RadioCICD?**

RadioCICD is a **complete containerized CI/CD pipeline** for Radio Frequency testing automation. Deploy a full RF testing infrastructure in minutes using Docker containers - no complex installations required.

---

## 🔄 **How It Works**

![RadioCICD Architecture](radiocicd-architecture.png)

### **1. 📚 Gitea (ON-PREMISE Repository)**
Your self-hosted Git server stores everything:
- **RF test scripts** - GNU Radio Python scripts and flowgraphs
- **Docker images** - Custom GNU Radio containers for testing
- **Ansible playbooks** - Automation scripts for hardware deployment
- **Configuration files** - Pipeline and deployment configurations

**Why ON-PREMISE?** Complete control, no external dependencies, works in air-gapped environments.

### **2. 🔨 Jenkins (CI/CD Orchestration)**
When you push code to Gitea, Jenkins automatically:

#### **Build Stage**
- **Pulls latest code** from Gitea repository
- **Builds GNU Radio Docker image** with your test scripts
- **Validates container** - Ensures the image works correctly

#### **Test Stage**  
- **Dry-run validation** - Tests RF scripts without hardware
- **Syntax checking** - Validates Python code and flowgraphs
- **Ansible playbook testing** - Ensures deployment scripts are correct
- **Integration tests** - Verifies all components work together

#### **Deploy Stage**
- **Triggers Semaphore** via webhook API
- **Passes validated code** to deployment system

**Why this matters?** Catches errors early, before they reach expensive RF hardware.

### **3. 🎭 Semaphore (Deployment Manager)**
Receives deployment requests from Jenkins and:
- **Executes Ansible playbooks** on target RF hardware
- **Deploys GNU Radio containers** to test nodes
- **Manages RF hardware** - Configures HackRF/BladeRF/USRP devices
- **Monitors deployment** via web interface

**Why containerized?** No manual Ansible installation, everything runs in Docker.

### **4. 📡 RF Hardware Testing**
The actual RF testing happens:
- **GNU Radio container** starts in monitoring mode
- **Test scripts execute** on RF hardware (HackRF, BladeRF, USRP)
- **Real-time monitoring** - Live signal analysis via GNU Radio GUI
- **Data collection** - IQ samples, measurements, test results
- **Results reporting** back to Jenkins

**Why this approach?** Real hardware testing with automated monitoring and result collection.

---

## 🚀 **Quick Start**

### Deploy Everything in 3 Commands
```bash
git clone https://github.com/Erwan923/RadioCICD.git
cd RadioCICD
docker-compose up -d
```

### Access Your Infrastructure
- **Gitea**: http://localhost:3000 (Your ON-PREMISE Git)
- **Jenkins**: http://localhost:8080 (CI/CD Dashboard)  
- **Semaphore**: http://localhost:3001 (Deployment Manager)

### 📹 Configuration Tutorial Coming Soon!
Step-by-step video guide for complete setup and configuration.

---

## 💡 **Why RadioCICD?**

### **For RF Engineers**
- 🔬 **Automated testing** - No more manual test execution
- 📊 **Real-time monitoring** - See your RF tests live via GNU Radio
- 🚀 **Faster development** - Immediate feedback on code changes
- 🛡️ **Quality assurance** - Catch issues before hardware deployment

### **For DevOps Teams**
- 📦 **100% containerized** - Deploy entire infrastructure with one command
- 🔧 **No complex setup** - No manual Ansible, GNU Radio, or Git installations
- 📈 **Scalable** - Add more RF hardware nodes easily
- 🔒 **Secure & ON-PREMISE** - Complete control over your infrastructure

### **The Problem RadioCICD Solves**
Traditional RF testing is manual, error-prone, and slow. RadioCICD brings modern DevOps practices to RF engineering:
- **Before**: Manual test execution, no version control, inconsistent environments
- **After**: Automated pipelines, version-controlled tests, reproducible results

---

## 🧪 **Supported RF Hardware**

- **HackRF One** - 1 MHz to 6 GHz transceiver
- **BladeRF** - High-performance SDR platform  
- **USRP** - Universal Software Radio Peripheral
- **RTL-SDR** - Low-cost receive-only dongles

---

## 📁 **What You Get**

```
RadioCICD/
├── docker-compose.yml          # One-command deployment
├── radiocicd-logo.png          # Project branding
├── radiocicd-architecture.png  # System overview
├── setup.sh                    # Quick setup script
├── gitea/                      # ON-PREMISE Git config
├── jenkins/                    # CI/CD pipelines  
├── Ansible/                    # Hardware automation
└── infra_deploy/               # Infrastructure code
```

---

## 🤝 **Contributing**

Help improve RadioCICD:
- 🔧 **Add RF hardware support** - New SDR devices
- 🧪 **Create test examples** - GNU Radio flowgraphs
- 📊 **Enhance monitoring** - Better visualization
- 📚 **Improve documentation** - Tutorials and guides

---

<div align="center">
  <p><strong>Transform your RF testing with modern DevOps! 🚀</strong></p>
  
  [![Star on GitHub](https://img.shields.io/badge/Star-on%20GitHub-yellow?style=for-the-badge&logo=github)](https://github.com/Erwan923/RadioCICD)
  [![Watch Tutorial](https://img.shields.io/badge/Tutorial-Coming%20Soon-red?style=for-the-badge&logo=youtube)](https://youtube.com)
  
  <sub>Built with 📡 and ❤️ for the RF Engineering Community</sub>
</div>
