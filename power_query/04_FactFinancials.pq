// Power Query (M) — FactFinancials
// Cleaning: types, trim region/department, remove null amounts, filter valid keys

let
    Source = Excel.Workbook(File.Contents("Finance_Source_Data.xlsx"), null, true),
    Sheet = Source{[Item="FactFinancials", Kind="Sheet"]}[Data],
    #"Promoted Headers" = Table.PromoteHeaders(Sheet, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(
        #"Promoted Headers",
        {
            {"DateKey", Int64.Type},
            {"AccountKey", Int64.Type},
            {"ScenarioKey", Int64.Type},
            {"Amount", type number},
            {"Region", type text},
            {"Department", type text}
        }
    ),
    #"Trimmed Text" = Table.TransformColumns(
        #"Changed Type",
        {{"Region", Text.Trim, type text}, {"Department", Text.Trim, type text}}
    ),
    #"Filtered Nulls" = Table.SelectRows(#"Trimmed Text", each [Amount] <> null and [DateKey] <> null),
    #"Added Absolute" = Table.AddColumn(#"Filtered Nulls", "AmountAbs", each Number.Abs([Amount]), type number)
in
    #"Added Absolute"
