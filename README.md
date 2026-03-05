# ⚡ Chargebase
### *What should I charge?*

An end-to-end market intelligence and pricing optimization system — built for anyone from a first-time founder to a seasoned executive who needs a data-backed answer to the most fundamental business question.

> Built with R, Python, SQL, and optimization models. Published as a real portfolio project.

---

## 🧠 The Problem

Pricing mistakes are invisible but expensive.

- A bag priced at **$1,600** when it should be **$1,800** = $200 lost per unit
- At 10,000 units = **$2,000,000 in lost revenue**
- Companies guess. Chargebase calculates.

---

## 🔁 The Pipeline

```
1. Scrape     →   Collect competitor pricing data from Rebag.com
2. Clean      →   Standardize, transform, engineer variables
3. Store      →   Load into structured SQL database
4. Analyze    →   Regression + hypothesis testing to find pricing drivers
5. Forecast   →   90-day demand forecast by brand (ARIMA / Prophet)
6. Optimize   →   Price recommendation engine (Solver + AMPL)
7. Visualize  →   Interactive Tableau dashboard
8. Strategize →   Business insights deck + recommendations
```

---

## 📁 Repository Structure

```
chargebase/
│
├── README.md
├── LICENSE
├── .gitignore
│
├── data/
│   ├── raw/                    ← Raw scraped output
│   ├── clean/                  ← Analysis-ready dataset
│   └── sample/                 ← 100-row public sample
│
├── scraping/
│   ├── scraper_r.R             ← R scraper (rvest + httr)
│   └── scraper_python.py       ← Python backup scraper
│
├── cleaning/
│   ├── clean_r.R               ← R cleaning (dplyr/tidyverse)
│   └── clean_python.py         ← Python cleaning (pandas)
│
├── database/
│   ├── schema.sql              ← Table creation scripts
│   └── queries.sql             ← Key analytical queries
│
├── analysis/
│   ├── eda.R                   ← Exploratory data analysis
│   ├── regression.R            ← Regression model (R)
│   ├── hypothesis_tests.R      ← t-tests, Levene's test
│   └── analysis_python.py      ← Python confirmation (statsmodels)
│
├── forecasting/
│   ├── forecast_r.R            ← R time series forecasting
│   └── forecast_python.py      ← Python Prophet / ARIMA
│
├── optimization/
│   ├── solver_model.xlsx       ← Excel Solver model
│   ├── ampl_model.mod          ← AMPL optimization model
│   └── decision_tree.xlsx      ← PrecisionTree scenario analysis
│
├── dashboard/
│   ├── chargebase_dashboard.twb  ← Tableau workbook
│   └── screenshots/              ← Dashboard preview images
│
├── outputs/
│   ├── chargebase_deck.pdf     ← Business insights deck
│   └── chargebase_findings.md  ← Written findings summary
│
└── docs/
    ├── methodology.md          ← How the system works
    └── data_dictionary.md      ← Variable definitions
```

---

## 🛠 Tech Stack

| Stage | Tool | Language |
|---|---|---|
| Scraping | rvest, httr, BeautifulSoup | R, Python |
| Cleaning | dplyr, tidyverse, pandas | R, Python |
| Database | SQL | SQL |
| Analysis | regression, t-tests, Levene's | R, Python |
| Forecasting | Prophet, ARIMA, forecast pkg | Python, R |
| Optimization | Excel Solver, AMPL, PrecisionTree | Excel, AMPL |
| Dashboard | Tableau | Tableau |
| Presentation | PowerPoint, Canva | — |

---

## 📊 Key Findings

> *(To be updated after analysis is complete)*

- Finding 1
- Finding 2
- Finding 3

---

## 🚀 How to Run

### R Pipeline
```r
# Install dependencies
install.packages(c("rvest", "httr", "dplyr", "tidyverse", "forecast", "ggplot2"))

# Step 1: Scrape
source("scraping/scraper_r.R")

# Step 2: Clean
source("cleaning/clean_r.R")

# Step 3: Analyze
source("analysis/eda.R")
source("analysis/regression.R")
source("analysis/hypothesis_tests.R")

# Step 4: Forecast
source("forecasting/forecast_r.R")
```

### Python Pipeline
```bash
pip install pandas numpy requests beautifulsoup4 prophet statsmodels matplotlib

python scraping/scraper_python.py
python cleaning/clean_python.py
python analysis/analysis_python.py
python forecasting/forecast_python.py
```

### Database Setup
```sql
-- Run schema first
source database/schema.sql

-- Then load data and run queries
source database/queries.sql
```

---

## 👥 Team

| Member | Role | Core Tools |
|---|---|---|
| [Your Name] | Data Architecture, Statistics, Strategy | R, SQL, Business Frameworks |
| TechGk-R | Modeling, Optimization, Visualization | Python, AMPL, Solver, Tableau |

---

## 📄 License

MIT License — free to use, adapt, and build on.

---

## 🌐 Domain

[chargebase.com](https://chargebase.com)

---

*Built as part of an end-to-end analytics portfolio project. March 2026.*
