-- Secure Risk Data Model (Fictitious Data)

CREATE TABLE clients (
    client_id TEXT PRIMARY KEY,
    age_group TEXT,
    employment_status TEXT,
    sector TEXT,
    country TEXT
);

CREATE TABLE loans (
    loan_id TEXT PRIMARY KEY,
    client_id TEXT,
    loan_type TEXT,
    amount_bucket TEXT,
    maturity TEXT,
    interest_rate_bucket TEXT,
    FOREIGN KEY (client_id) REFERENCES clients(client_id)
);

CREATE TABLE risk_indicators (
    loan_id TEXT PRIMARY KEY,
    pd_bucket TEXT,
    lgd_bucket TEXT,
    risk_score INTEGER,
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);

CREATE TABLE decisions (
    loan_id TEXT PRIMARY KEY,
    decision TEXT,
    decision_reason TEXT,
    FOREIGN KEY (loan_id) REFERENCES loans(loan_id)
);
