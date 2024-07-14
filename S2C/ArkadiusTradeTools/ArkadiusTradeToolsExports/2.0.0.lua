local localization =
{
    ATT_STR_BUYER                    = "Buyer",
    ATT_STR_SELLER                   = "Seller",
    ATT_STR_GUILD                    = "Guild",
    ATT_STR_ITEM                     = "Item",
	ATT_STR_UNIT_PRICE               = "ea",
    ATT_STR_PRICE                    = "Price",
    ATT_STR_START_TIME               = "Start Time",
    ATT_STR_END_TIME                 = "End Time",
    ATT_STR_GENERATED_TIME           = "Created",
    ATT_STR_EXPORTS                  = "Exports",
    ATT_STR_EXPORT                   = "Export",
    ATT_STR_TODAY                    = "Today",
    ATT_STR_YESTERDAY                = "Yesterday",
    ATT_STR_TWO_DAYS_AGO             = "Two days ago",
    ATT_STR_THIS_WEEK                = "This week",
    ATT_STR_LAST_WEEK                = "Last week",
    ATT_STR_PRIOR_WEEK               = "Prior week",
    ATT_STR_7_DAYS                   = "7 days",
    ATT_STR_10_DAYS                  = "10 days",
    ATT_STR_14_DAYS                  = "14 days",
    ATT_STR_30_DAYS                  = "30 days",
    ATT_STR_KEEP_EXPORTS_FOR_DAYS    = "Keep exports for n days",
    ATT_STR_FILTER_TEXT_TOOLTIP      = "Text search for user-, guild- or item names",
    ATT_STR_FILTER_SUBSTRING_TOOLTIP = "Toggle between search for exact strings or substrings. Case sensitivity is ignored in both cases.",
    ATT_STR_FILTER_COLUMN_TOOLTIP    = "Exclude/include this column from/to the text search",
    ATT_STR_EXPORT_RELOAD_WARNING    = "Export saved. Please /reloadui to write to disk.",
    ATT_STR_INCLUDE_ONLY_MEMBERS     = "Only include members"
}

ZO_ShallowTableCopy(localization, ArkadiusTradeTools.Modules.Exports.Localization)
