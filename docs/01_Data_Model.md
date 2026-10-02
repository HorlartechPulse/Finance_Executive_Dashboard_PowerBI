# Data Model & Relationships

## Star schema

```
DimDate          DimAccount       DimScenario
   │                  │                │
   │ DateKey          │ AccountKey     │ ScenarioKey
   └──────────── FactFinancials ───────┘
                      │
                 Region, Department (degenerate attributes)
```

## Relationships

| From (many) | To (one) | Key | Cardinality | Filter |
|-------------|----------|-----|-------------|--------|
| FactFinancials[DateKey] | DimDate[DateKey] | DateKey | Many-to-one | Single |
| FactFinancials[AccountKey] | DimAccount[AccountKey] | AccountKey | Many-to-one | Single |
| FactFinancials[ScenarioKey] | DimScenario[ScenarioKey] | ScenarioKey | Many-to-one | Single |

## Power BI setup checklist

1. Import all tables from `Finance_Source_Data.xlsx` using M scripts in `/power_query`.
2. Model view: create the three relationships above.
3. Mark **DimDate** as the Date table (Date column = `Date`).
4. Hide key columns on the fact table (`DateKey`, `AccountKey`, `ScenarioKey`).
5. Sort `DimAccount[AccountName]` by `SortOrder`.
6. Sort `DimDate[MonthName]` by `Month`.
7. Create a blank measure table `_Measures` and add all DAX from `/dax/measures.dax`.

## Grain

- **FactFinancials**: one row per Year-Month × Account × Scenario × Region × Department (P&L and balance sheet accounts).
- Balance sheet accounts are stored as end-of-month snapshot amounts.
