-- Chargebase — Database Schema
-- Stage 3: Data Storage
-- Owner: You
-- Normalized to 3NF

-- Brand reference table
CREATE TABLE brands (
    brand_id    INTEGER PRIMARY KEY,
    brand_name  TEXT NOT NULL,
    brand_tier  INTEGER  -- 1=Luxury, 2=Premium, 3=Accessible
);

-- Core bags listing table
CREATE TABLE bags (
    bag_id          INTEGER PRIMARY KEY,
    brand_id        INTEGER REFERENCES brands(brand_id),
    price           NUMERIC(10,2),
    original_msrp   NUMERIC(10,2),
    condition       TEXT,
    condition_score INTEGER,
    discount        INTEGER,  -- 0 or 1
    bag_type        TEXT,
    material        TEXT,
    color           TEXT,
    days_listed     INTEGER,
    scrape_date     DATE
);

-- Pricing history for time series analysis
CREATE TABLE pricing_history (
    history_id  INTEGER PRIMARY KEY,
    bag_id      INTEGER REFERENCES bags(bag_id),
    price       NUMERIC(10,2),
    recorded_at DATE
);
