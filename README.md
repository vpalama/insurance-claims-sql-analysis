# Insurance Claims SQL Analysis  

This project analyzes an insurance claims dataset to demonstrate SQL skills in data quality checks, descriptive analytics, and business insights.
---

## Dataset  
The dataset came as a CSV file and includes:  
- Claim ID  
- Customer ID  
- Claim Date  
- Claim Amount  
- Claim Type (Accident, Fire, Theft)  
- Region (North, South, East, West)  
- Status (Approved, Pending, Rejected)  

## Tools Used  
- MySQL Workbench  
- CSV import  
- GitHub for version control  

## Process  
1. Imported the dataset into MySQL.  
2. Did data quality checks (looked for missing values, duplicates, and negative amounts).  
3. Wrote descriptive queries to explore claim types, regions, and statuses.  
4. Ran some advanced queries to check payouts, monthly activity, and top customers.  

## Key Insights  
- **Average claim by type**: Theft = $45,000, Accident = $25,800, Fire = $5,000.  
- **Claims by region/status**: West (2 approved), North (1 approved), East (1 pending), South (1 rejected).  
- **Total approved payouts**: North = $75,000, West = $2,400.  
- **Month with highest activity**: Jan 2025 (5 claims worth $127,400).  
- **Top customers by average claim**:  
  - C002 = $45,000  
  - C003 = $5,000  
  - C001 = $1,200  

## Files in Repo  
- `insurance_claims_analysis.sql` → SQL queries  
- `acer_america_insurance_claims.csv` → dataset  
- `README.md` → this project summary  

## Next Steps  
I plan to build a simple dashboard in Tableau or Power BI to visualize claims by region and type.  
