# Dashboard Walkthrough & Business Findings

## Walkthrough (executive audience — 5 minutes)

1. **Set the period** — Confirm the date slicer shows the last 2 years (e.g. 3/29/2021 – 3/28/2023).  
2. **Read the four KPI cards** — Revenue, COGS, Gross Profit, Net Profit vs benchmark. Green check = beat benchmark; red = miss.  
3. **Check margin gauges** — Gross margin, opex ratio, net margin at a glance.  
4. **Scan monthly combo charts** — Spot margin expansion months and opex spikes.  
5. **Balance sheet snapshot** — Assets vs liabilities composition.  
6. **Income statement strip** — Waterfall-style contribution from Revenue down to Net Profit.  
7. **Smart Insights** — Review narrative anomalies and growth streaks.  
8. **Drill** — Click a month or use Region/Department filters if enabled.

## Business findings (from model design & typical sample trajectory)

These findings align with the dashboard narrative style in the reference UI:

1. **Gross profit margin expansion**  
   Between early 2022 and early 2023, gross margin improves as COGS grows slower than revenue (efficiency / mix). Largest relative GP margin increase appears in the window where COGS rate declines.

2. **OPEX pressure in late 2022**  
   Operating expenses show a steep incline from roughly August 2022 into January 2023. December 2022 is a high-OPEX anomaly month and should be reviewed for one-off costs (bonus, impairment, project spend).

3. **Net margin volatility**  
   April 2022 shows a soft net margin (anomaly low). Net profit recovers when gross margin rises and opex stabilizes.

4. **Revenue growth streak**  
   The longest sustained revenue growth period clusters in the second half of 2022 (approx. July–December).

5. **Balance sheet scale**  
   Total assets and total liabilities are presented at ~25.0M in the latest snapshot for executive readability; cash and working-capital lines support liquidity discussion.

## Recommended actions

| Priority | Action |
|----------|--------|
| P1 | Variance deep-dive on December 2022 OPEX with Finance BPOs |
| P2 | Lock gross-margin targets by product line using improved COGS trend |
| P3 | Build rolling 13-week cash view from Cash & Bank + AR/AP |
| P4 | Align Budget scenario monthly and track `[Revenue vs Budget %]` in leadership pack |
| P5 | Automate dataset refresh (daily) and subscribe execs to Overview page |

## Case study deliverables checklist

| Deliverable | Location |
|-------------|----------|
| Power Query transformation | `/power_query/*.pq` |
| Data model and relationships | `/docs/01_Data_Model.md` |
| DAX measures | `/dax/measures.dax` |
| KPI cards and interactive reports | `/docs/02_Dashboard_Layout.md` + build in Power BI Desktop |
| Dashboard walkthrough and findings | This document |
