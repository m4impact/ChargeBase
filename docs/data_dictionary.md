# Chargebase — Data Dictionary

Every variable in the dataset defined clearly.

---

## Raw Dataset Variables

| Variable | Type | Description | Example |
|---|---|---|---|
| `brand` | String | Luxury brand name | Chanel, Gucci, Prada |
| `price` | Numeric | Current listing price (USD) | 1500 |
| `original_msrp` | Numeric | Original retail price (USD) | 3200 |
| `condition` | String | Item condition rating | Excellent, Very Good, Good |
| `discount` | Binary (0/1) | Whether item is discounted | 1 |
| `bag_type` | String | Type of bag | Shoulder, Tote, Clutch, Crossbody |
| `material` | String | Primary material | Leather, Canvas, Suede |
| `days_listed` | Numeric | Days on platform before sold | 14 |
| `color` | String | Primary color | Black, Beige, Brown |
| `scrape_date` | Date | Date the listing was scraped | 2026-03-05 |

---

## Engineered Variables (Created During Cleaning)

| Variable | Type | Formula | Description |
|---|---|---|---|
| `discount15` | Binary | 1 if discount > 15% | Significant discount flag |
| `price_to_msrp_ratio` | Numeric | price / original_msrp | Resale retention rate |
| `brand_tier` | String | Grouped brand category | Tier 1 (Chanel/Hermes), Tier 2 (Gucci/LV), Tier 3 (Prada/Coach) |
| `condition_score` | Numeric | Excellent=3, Very Good=2, Good=1 | Numeric condition encoding |

---

## Condition Rating Definitions

| Rating | Definition |
|---|---|
| Excellent | Like new. Minimal to no signs of use. |
| Very Good | Light signs of use. No major flaws. |
| Good | Visible wear. Functional but used. |

---

## Brand Tier Classification

| Tier | Brands |
|---|---|
| Tier 1 | Chanel, Hermès, Louis Vuitton |
| Tier 2 | Gucci, Prada, Dior |
| Tier 3 | Coach, Kate Spade, Michael Kors |
