# 🏠 Nashville Housing Marketing Dashboard
**End-to-End ETL Pipeline | SQL → Power Query → Power BI**

## 📘 Project Overview
This project demonstrates a full ETL (Extract, Transform, Load) process — from raw, inconsistent housing data to a fully automated Power BI dashboard.  
I used SQL to structure and manipulate the source data (including intentionally introducing data quality issues), Power Query to perform complex data cleaning and transformation, and Power BI for data modeling, DAX measures, and visualization.

---

## 🧩 Objectives
- Practice end-to-end data management with SQL, Power Query, and Power BI.  
- Apply real-world data cleaning methods to handle duplicates, nulls, and inconsistent formats.  
- Build a performant data model with reusable measures and calculated columns.  
- Develop an interactive dashboard for analyzing property sales trends and value distributions.  

---

## ⚙️ Tech Stack
| Tool | Purpose |
|------|----------|
| **SQL Server** | Data import, exploration, and preparation |
| **Power Query** | Data transformation, standardization, and cleaning |
| **Power BI Desktop** | Data modeling, DAX measures, and dashboard design |

---

## 🔄 ETL Workflow Breakdown  

### **1️⃣ SQL — Data Loading & Preprocessing**
- Imported the raw **Nashville Housing** dataset into SQL.  
- Simulated messy data scenarios by adding:
  - **Duplicate records**
  - **Null and missing values**
  - **Inconsistent text formats and data types**  
- Combined columns (e.g., 'uniqueid', 'parcelid')  

### **2️⃣ Power Query — Transformation & Cleaning**
- Connected Power BI to the SQL dataset.  
- Applied key data transformations:  
  - Removed duplicates using a composite key logic.  
  - Filled missing values with conditional logic.  
  - Standardized casing, trimmed spaces, and corrected inconsistent formats.  
  - Split and merged fields for normalized dimensions.  
  - Renamed and reordered columns for data model clarity.  
- Documented all transformation steps for reproducibility.  

### **3️⃣ Power BI — Modeling & Visualization**
- Built a clean star schema model in Power BI.  
- Created DAX measures for:  
  - **Total Property Revenue (102M)**  
  - **Properties Sold (572)**  
  - **Total Land Value (12M)**  
- Designed and formatted visuals:  
  - **Line Chart:** Property Sales Trend (2013–2016)  
  - **Bar Chart:** Sales Distribution by Location  
  - **Pie Chart:** Value Breakdown (Building vs. Land)  
  - **Map Visual:** Property locations across Tennessee  
  - **Monthly Sales Analysis:** Seasonal performance trends  

---

## 📊 Analytical Insights
- **Data Quality:** Power Query eliminated all duplicates and nulls, improving data integrity.  
- **Revenue Analysis:** Total property revenue reached **102M**, with 79% of total value from building assets.  
- **Market Distribution:** Urban regions showed higher concentration of property transactions.  
- **Trend Insights:** Significant sales growth observed between 2014–2015, followed by market stabilization.  

---

## 🧠 Key Learnings
- Strengthened understanding of **SQL-based data validation** and **Power Query M transformations**.  
- Learned to design **robust data models** optimized for DAX calculations and refresh efficiency.  
- Enhanced ability to translate raw, inconsistent data into actionable business insights.  

---

## 🖼️ Dashboard Preview
![Uploading nashville housing marketing dashboard.png…]()


---

## 🚀 Next Steps
- Integrate **Power BI Gateway** for scheduled data refresh.  
- Add an automated validation script to quantify duplicates and nulls before/after cleaning.  
- Expand with **time-series forecasting** using DAX or Azure Machine Learning integration.  
