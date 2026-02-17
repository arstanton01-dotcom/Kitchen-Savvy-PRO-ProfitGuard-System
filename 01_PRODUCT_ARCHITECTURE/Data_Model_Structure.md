# Data Model Structure
<<<<<<< HEAD

## Overview
This document defines all tables, columns, and relationships for the ProfitGuard System.

### Core Tables
1. **Vendors**
   - Vendor_ID (Primary Key)
   - Vendor_Name
   - Contact_Info
   - Contracted_Rates
   - Delivery_Performance

2. **Invoices**
   - Invoice_ID (Primary Key)
   - Vendor_ID (Foreign Key)
   - Invoice_Date
   - Item_Name
   - UOM
   - Quantity
   - Unit_Price
   - Total_Price
   - Variance_% (calculated)
   - Recovery_Value (calculated)

3. **Menu_Items**
   - Item_ID (Primary Key)
   - Item_Name
   - Category
   - Standard_Cost
   - Price
   - Margin

4. **Labor**
   - Employee_ID
   - Role
   - Hours_Worked
   - Cost_Per_Hour
   - Total_Labor_Cost
   - Cost_Per_Transaction (calculated)

5. **Inventory**
   - Item_ID (Foreign Key)
   - Expected_Usage
   - Actual_Usage
   - Waste
   - Cost_Variance

## Relationships
- Vendors → Invoices (1:M)
- Menu_Items → Inventory (1:M)
- Invoices → Recovery_Queue (1:1 mapping per discrepancy)
=======
[...paste full content...]
>>>>>>> 4b0d977 (Add finalized content for all project folders and files)
