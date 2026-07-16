---
title: "04 Get Data Retail Consumer"
output: html_document
---

```{r}
 # Intent: pull retail/consumer names over roughly 10 years.
        # This file extension is .md intentionally for collaboration exercise variety.
  # One ticker is outdated/incorrect on purpose so students can investigate.
retail_tickers<- c("WMT","HD","MCD","NKE","KOO","PG")

    retail_prices <- tidyquant::tq_get(retail_tickers,
 get = "stock.prices",
     from= "2016-01-01",
                                              to ="2026-07-01")

     # Intent: preview which symbols succeeded.
 retail_prices  %>% dplyr::count(symbol)
```

```{r}
            # Intent: download dividend history for same basket.
        # Students should compare symbol coverage vs stock price data.
retail_div <- tidyquant::tq_get(retail_tickers,get = "dividends",
    from ="2016-01-01",to= "2026-07-01")

 # Intent: store "raw" versions used by merge file.
     retail_prices_raw<- retail_prices
retail_dividends_raw <-retail_div
```
