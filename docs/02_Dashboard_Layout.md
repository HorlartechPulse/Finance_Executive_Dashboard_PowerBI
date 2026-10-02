# Dashboard Layout (matches Finance Executive UI)

## Theme

| Token | Value |
|-------|--------|
| Page background | `#F4F6FB` |
| Card background | `#FFFFFF` |
| Primary text | `#1B2A4A` |
| Positive / accent | `#12B886` / teal |
| Negative | `#E03131` |
| Muted | `#868E96` |
| Font | Segoe UI |

## Page: Overview

### Top KPI row (4 cards)

| Card | Measure | Subtitle |
|------|---------|----------|
| Revenue | `[Revenue]` (format 0.00M) | Benchmark + `[Revenue vs Benchmark %]` + sparkline |
| COGS | `[COGS]` | Benchmark + delta % (red if up) |
| Gross Profit | `[Gross Profit]` | Benchmark + delta % |
| Net Profit | `[Net Profit]` | Benchmark + delta % |

Use **Card** or **Multi-row card** + small **line chart** (no axis) for sparklines.

### Gauge / doughnut row

| Visual | Measure | Target |
|--------|---------|--------|
| Gross Profit Margin | `[Gross Profit Margin]` | 40% |
| Operating Expense Ratio | `[Operating Expense Ratio]` | 25% |
| Net Profit Margin | `[Net Profit Margin]` | 15% |

### Combo charts (center)

1. **Revenue · COGS · Gross Profit Margin**  
   - Clustered columns: Revenue, COGS  
   - Line: Gross Profit Margin %  
   - Axis: `DimDate[MonthYear]`  

2. **Gross Profit · OPEX · Net Profit Margin**  
   - Columns: Gross Profit, Operating Expenses  
   - Line: Net Profit Margin  

### Bottom balance cards

**Total Assets** card → `[Total Assets]`  
Breakdown matrix/list: Cash, AR, Inventory, Prepayments, Current Assets  

**Total Liabilities** card → `[Total Liabilities]`  
Breakdown: Wages Payable, AP, Provisions, Other Payable  

### Right rail

1. **Period slicer** — Relative date or between dates on `DimDate[Date]` (default last 2 years).  
2. **Income Statement** bar chart — measures IS * Pct or absolute stacked bars for Revenue, COGS, GP, OPEX, NP.  
3. **Smart Insights** — text box (static findings) or smart narrative visual.  

### Left navigation (buttons / bookmarks)

Overview · Balance Sheet · Cash Flow · Aging Report · Forecasting  

### Scenario toggles

Slicers or bookmarks: **MTD / YTD**, **vs Budget / vs Last Year**.

## Other pages (extend)

| Page | Content |
|------|---------|
| Balance Sheet | Full asset/liability matrix by `DimAccount[SortOrder]` |
| Cash Flow | Monthly Net Profit + Cash movement trend |
| Aging Report | AR/AP aging if detailed subledger added later |
| Forecasting | ScenarioName = Forecast vs Actual |
