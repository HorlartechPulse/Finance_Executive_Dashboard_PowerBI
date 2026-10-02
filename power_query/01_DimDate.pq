// Power Query (M) — DimDate
// Data → Get Data → Excel → select DimDate sheet → Transform

let
    Source = Excel.Workbook(File.Contents("Finance_Source_Data.xlsx"), null, true),
    Sheet = Source{[Item="DimDate", Kind="Sheet"]}[Data],
    #"Promoted Headers" = Table.PromoteHeaders(Sheet, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(
        #"Promoted Headers",
        {
            {"DateKey", Int64.Type},
            {"Date", type date},
            {"Year", Int64.Type},
            {"Quarter", type text},
            {"Month", Int64.Type},
            {"MonthName", type text},
            {"MonthYear", type text},
            {"YearMonth", Int64.Type},
            {"IsMTD", Int64.Type},
            {"IsYTD", Int64.Type},
            {"FiscalYear", Int64.Type}
        }
    ),
    #"Sorted Rows" = Table.Sort(#"Changed Type", {{"Date", Order.Ascending}})
in
    #"Sorted Rows"
