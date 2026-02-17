# 🍕 Pizza Sales Analysis Project

## 📌 Project Overview
Analyzed one year of fictitious pizza sales data to identify sales trends, best-selling products, and revenue drivers. The goal was to help the business understand customer behavior and optimize their menu using data-driven insights.

**Tools Used:** - **SQL (PostgreSQL):** For data cleaning, exploration, and KPI calculation.
- **Power BI:** For building an interactive dashboard and data visualization.

## 🔍 Key Insights & Findings
Based on the analysis of the dataset, here are the major findings:

### 1. 📅 Busiest Days & Times
- **Peak Days:** Orders are highest on **Friday and Saturday** evenings.
- **Peak Months:** Maximum orders were recorded in **July and January**.
- **Peak Hours:** Most orders are placed between **12 PM - 1 PM** (Lunch) and **6 PM - 8 PM** (Dinner).

### 2. 🏆 Sales Performance
- **Top Performer (Revenue):** The **Thai Chicken Pizza** contributes to maximum revenue.
- **Top Performer (Quantity):** The **Classic Deluxe Pizza** is the most ordered pizza.
- **Worst Performer:** The **Brie Carre Pizza** has the lowest revenue and order count.
- **Category:** The **Classic** category contributes to maximum sales and total orders.
- **Size:** **Large (L)** size pizzas are the most popular among customers.

## 📊 Dashboard Preview

## 🛠️ Technical Process
1.  **Data Extraction:** Imported 4 CSV files (Orders, Order_Details, Pizzas, Pizza_Types) into PostgreSQL.
2.  **Data Cleaning:** Handled data type issues and special characters in `ingredients` column using SQL queries.
3.  **Data Modeling:** Created a Star Schema in Power BI relating the tables.
4.  **DAX Calculations:** Created Measures for Total Revenue, Avg Order Value, and Total Orders.
5.  **Visualization:** Designed a 2-page interactive report with navigation buttons.

## 📂 Repository Structure
- **`Pizza_Sales_Analysis_Queries.sql`**: Contains all SQL queries used for KPI generation and analysis.
- **`Pizza_Sales_Report.pbix`**: The complete Power BI dashboard file.
- **`Screenshots/`**: Folder containing images of the dashboard and insights.

## 🚀 Conclusion & Recommendations
- **Menu Optimization:** Consider removing or rebranding the *Brie Carre Pizza* due to low performance.
- **Inventory Management:** Ensure sufficient stock for *Thai Chicken* and *Classic Deluxe* pizzas, especially on weekends.
- **Marketing:** Run promotions during weekdays to boost sales during off-peak hours.

---
*Created by [Azharuddin Saikh]*
Imp: This is a Learning Project
