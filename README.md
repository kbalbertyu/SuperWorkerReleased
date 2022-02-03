# SuperWorker
Framework for quick building combined applications

Applications are arranged by tabs 

## Applications
### Keepa
Crawl sellers (sellerId, storeName) from Keepa.com (login required) with given Amazon ASIN. Then open the report page with the crawled sellerIds, and download reports from that page.

Downloaded stores are saved in local db, to avoid duplicated downloading, at the meantime, the records will be uploaded to Google spread sheet via Google Apps Script Web API. Then each time before crawling, will need to fetch the latest sellerIds, and add to the skip list. 

In order to avoid blocked in China Mainland when accessing Google APIs, proxy is required. In this project, so far we manually config proxy with a Chrome extension called "Proxy Omega", and request the API with the browser. 
### Google Sheet
Designed for managing Google Spread sheets.

### Amazon
Designed for crawling ASINs by given rules.

### BTCrawler
Designed for crawling articles from different sources for targeted website backend. These functions were built in the project [Content Crawler](https://github.com/kbalbertyu/ContentCrawler).

## Project Requirements
1. JDK 8
2. Maven
3. Chrome Driver
4. Exe4j (in order to build the exe file)