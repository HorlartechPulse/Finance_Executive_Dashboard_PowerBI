// Power Query (M) — DimAccount
let
    Source = Excel.Workbook(File.Contents("Finance_Source_Data.xlsx"), null, true),
    Sheet = Source{[Item="DimAccount", Kind="Sheet"]}[Data],
    #"Promoted Headers" = Table.PromoteHeaders(Sheet, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(
        #"Promoted Headers",
        {
            {"AccountKey", Int64.Type},
            {"AccountName", type text},
            {"AccountType", type text},
            {"Statement", type text},
            {"SortOrder", Int64.Type},
            {"IsPnl", Int64.Type},
            {"IsBalance", Int64.Type}
        }
    )
in
    #"Changed Type"
