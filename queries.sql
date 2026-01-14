-- 1. Global view: clients, loans, risk indicators and decisions
SELECT
    c.client_id,
    c.sector,
    c.country,
    l.loan_type,
    r.pd_bucket,
    r.lgd_bucket,
    d.decision
FROM clients c
JOIN loans l ON c.client_id = l.client_id
JOIN risk_indicators r ON l.loan_id = r.loan_id
JOIN decisions d ON l.loan_id = d.loan_id;

-- 2. Number of decisions by risk level
SELECT
    r.pd_bucket,
    d.decision,
    COUNT(*) AS number_of_loans
FROM risk_indicators r
JOIN decisions d ON r.loan_id = d.loan_id
GROUP BY r.pd_bucket, d.decision;

-- 3. Profile of rejected loans
SELECT
    c.sector,
    r.pd_bucket,
    r.lgd_bucket,
    d.decision_reason
FROM clients c
JOIN loans l ON c.client_id = l.client_id
JOIN risk_indicators r ON l.loan_id = r.loan_id
JOIN decisions d ON l.loan_id = d.loan_id
WHERE d.decision = 'rejected';

-- 4. Exposure by sector
SELECT
    c.sector,
    COUNT(*) AS total_loans
FROM clients c
JOIN loans l ON c.client_id = l.client_id
GROUP BY c.sector;
