# Chargebase — Methodology

How the system works, stage by stage.

---

## Overview

Chargebase is an 8-stage data pipeline that answers one question:

> **"What should I charge?"**

It transforms raw competitor pricing data into a statistically validated, optimization-backed price recommendation.

---

## Stage 1 — Data Collection

**Method:** Web scraping using R (rvest, httr) and Python (BeautifulSoup)
**Source:** Rebag.com product listings
**Target:** 1,000+ rows minimum

The scraper navigates paginated product listing pages, extracts structured data from HTML nodes, and exports a raw CSV file.

Key HTML elements targeted:
- Product title (brand + bag type)
- Listed price
- Condition badge
- Discount indicator
- Days listed (where available)

---

## Stage 2 — Data Cleaning

**Tools:** R (dplyr, tidyverse), Python (pandas)

Steps:
1. Standardize price format: remove `$` and `,`, convert to numeric
2. Encode discount as binary (0 = no discount, 1 = discounted)
3. Normalize condition labels (handle variations in text)
4. Remove duplicates and null prices
5. Engineer derived variables (see data dictionary)

---

## Stage 3 — Database Storage

**Tool:** SQL

Schema design follows 3NF normalization:
- `bags` — core listing table
- `brands` — brand reference with tier classification
- `pricing_history` — time-stamped price records for trend analysis

---

## Stage 4 — Statistical Analysis

**Tool:** R (primary), Python statsmodels (confirmation)

Models run:
1. **Descriptive statistics** — mean, median, distribution by brand/condition
2. **Multiple regression** — Price ~ Brand + Condition + Discount + BagType
3. **Hypothesis testing** — t-test: discounted vs non-discounted mean price
4. **Variance testing** — Levene's test across brand groups

Output: Coefficient table showing the $ impact of each variable on price.

---

## Stage 5 — Forecasting

**Tool:** Python (Prophet, ARIMA), R (forecast package)

Method:
1. Build time series dataset: price by week by brand
2. Fit ARIMA model per brand
3. Validate with Prophet as alternative model
4. Generate 90-day forward forecast with confidence intervals

Output: Brand-level price forecast for next quarter.

---

## Stage 6 — Optimization

**Tools:** Excel Solver, AMPL, PrecisionTree

Method:
1. Build price-to-sell-probability mapping (from historical data)
2. Calculate expected revenue at each price point: `Price × P(sell)`
3. Run Solver to find revenue-maximizing price
4. Validate with AMPL linear program
5. Build decision tree for scenario analysis (discount vs no discount)

Output: Recommended price per brand/condition/type combination.

---

## Stage 7 — Visualization

**Tool:** Tableau (primary), R ggplot2 (supporting charts)

Dashboard panels:
1. Average price by brand (bar chart)
2. Condition vs price scatter plot
3. Demand trend over time (line chart)
4. Recommended price calculator (input: brand + condition + type)

---

## Stage 8 — Business Strategy

**Framework:** Analytics → Insight → Implication → Recommendation → Impact

Each key finding is translated into:
- A business implication (what it means)
- A strategic recommendation (what to do)
- An estimated impact (how much it matters)

Final output is a consulting-style insights deck.

---

## Limitations

- Data scraped at a single point in time (no live feed)
- Sell probability estimated from days-listed proxy, not actual transaction data
- Brand tier classification is manually defined
- Sample may not represent full market

---

## Reproducibility

All code is documented and version-controlled on GitHub.
All random seeds are set for reproducibility.
Dataset sample is provided for those who cannot run the scraper.
