#RecipientFilter für eine bestimmte Gruppe auslesen

$g = Get-DynamicDistributionGroup "ZTest-CLD.DDG.FA.Directs"
$g.RecipientFilter
Get-Recipient -RecipientPreviewFilter $g.RecipientFilter |
  Sort-Object DisplayName |
  Format-Table DisplayName, Department, Title, Company, RecipientType
