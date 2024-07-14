local localization =
{
    ATT_STR_BUYER                    = "Buyer",
    ATT_STR_SELLER                   = "Seller",
    ATT_STR_GUILD                    = "Guild",
    ATT_STR_ITEM                     = "Item",
	ATT_STR_UNIT_PRICE               = "Unit Price",
    ATT_STR_PRICE                    = "Price",
    ATT_STR_TIME                     = "Time",
    ATT_STR_PURCHASES                = "Purchases",
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
    ATT_STR_KEEP_PURCHASES_FOR_DAYS  = "Keep purchases for x days",
    ATT_STR_FILTER_TEXT_TOOLTIP      = "Text search for user-, guild- or item names",
    ATT_STR_FILTER_SUBSTRING_TOOLTIP = "Toggle between search for exact strings or substrings. Case sensitivity is ignored in both cases.",
    ATT_STR_FILTER_COLUMN_TOOLTIP    = "Exclude/include this column from/to the text search",
}

ZO_ShallowTableCopy(localization, ArkadiusTradeTools.Modules.Purchases.Localization)
