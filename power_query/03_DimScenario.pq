// Power Query (M) — DimScenario
let
    Source = Excel.Workbook(File.Contents("Finance_Source_Data.xlsx"), null, true),
    Sheet = Source{[Item="DimScenario", Kind="Sheet"]}[Data],
    #"Promoted Headers" = Table.PromoteHeaders(Sheet, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(
        #"Promoted Headers",
        {{"ScenarioKey", Int64.Type}, {"ScenarioName", type text}}
    )
in
    #"Changed Type"
