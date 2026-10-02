# Finance Executive Dashboard — Power BI Case Study

**Business performance dashboard** for executive reporting: P&L KPIs, margins, income statement, balance sheet snapshot, and smart insights.

> Portfolio / training package. Open in **Power BI Desktop** and connect to the included Excel source. A pre-built `.pbix` is not embedded (binary format); this repo contains everything required to build it in under an hour.

---

## Deliverables

| # | Deliverable | Path |
|---|-------------|------|
| 1 | Source data (star schema) | `data/Finance_Source_Data.xlsx` |
| 2 | Power Query (M) transformations | `power_query/` |
| 3 | Data model & relationships | `docs/01_Data_Model.md` |
| 4 | DAX measure library | `dax/measures.dax` |
| 5 | KPI / report layout guide | `docs/02_Dashboard_Layout.md` |
| 6 | Walkthrough & business findings | `docs/03_Walkthrough_and_Findings.md` |

---

## Architecture

```
Excel Source
    ↓ Power Query
DimDate · DimAccount · DimScenario · FactFinancials
    ↓ Model relationships
DAX measures (_Measures)
    ↓
Overview dashboard (KPI cards, gauges, combo charts, BS cards, insights)
```

---

## Build in Power BI Desktop (quick start)

1. Open **Power BI Desktop**.  
2. **Get data → Excel workbook** → select `data/Finance_Source_Data.xlsx`.  
3. Load **DimDate**, **DimAccount**, **DimScenario**, **FactFinancials** (optionally transform with scripts in `power_query/`).  
4. **Model view**: create relationships on `DateKey`, `AccountKey`, `ScenarioKey`.  
5. Mark **DimDate** as date table.  
6. **Modeling → New table** → `_Measures = {0}` then add measures from `dax/measures.dax`.  
7. Build the **Overview** page using `docs/02_Dashboard_Layout.md` (match navy/teal finance theme).  
8. Add date slicer default: last 2 years.  
9. Optional: bookmarks for MTD/YTD and vs Budget / vs Last Year.

---

## KPI targets (reference UI)

| KPI | Example display |
|-----|-----------------|
| Revenue | 3.62M vs benchmark 1.52M |
| COGS | 2.14M |
| Gross Profit | 1.48M · margin ~40.8% |
| Net Profit | 0.57M · margin ~15.8% |
| OPEX ratio | ~25% |

Exact values depend on the date slicer range you select over the generated sample data.

---

## Suggested pages

1. **Overview** (primary executive canvas)  
2. **Balance Sheet**  
3. **Cash Flow**  
4. **Aging Report** (placeholder / extend with subledger)  
5. **Forecasting** (Scenario = Forecast)

---

## Complete visualization (included)

A finished executive dashboard workbook (KPIs, charts, income statement, regional analysis, findings) is ready to open:

```text
dashboard/Finance_Executive_Dashboard_COMPLETE.xlsx
```

Also available at the artifacts root as `Finance_Executive_Dashboard_COMPLETE.xlsx`.

Open **Executive_Dashboard** sheet for the full visual pack. Rebuild the same layout in Power BI Desktop using the steps below.

## Author

**Abdulwaheed Toheeb Olanrewaju**  
Portfolio — Power BI · Financial Analytics · Executive Reporting
