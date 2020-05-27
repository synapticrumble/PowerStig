# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License.

$rules = $stig.RuleList | Select-Rule -Type SharePoint.SPWebAppGeneralSettingsRule

foreach ($rule in $rules)
{
    SPWebAppGeneralSettings (Get-ResourceTitle -Rule $rule)
    {
        Name = $rule.Name
        Ensure = $rule.Ensure
        WebAppUrl = $rule.WebAppUrl
        BrowserFileHandling = $rule.BrowserFileHandling
        SecurityValidationTimeOutMinutes = $rule.SecurityValidationTimeOutMinutes
        AllowOnlineWebPartCatalog = $rule.AllowOnlineWebPartCatalog
    }
}