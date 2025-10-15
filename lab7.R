library(rvest)
url<-"http://books.toscrape.com/"
html_content<-read_html(url)
html_content

#b
title_xpath<-'//*[@class="product_pod"]/h3/a'
price_xpath<-'//*[@class="product_pod"]/div[2]/p[1]'

#c
title<-html_content %>% html_nodes(xpath = title_xpath) %>% html_text() %>%trimws()
print(title)
prices<-html_content %>% html_nodes(xpath=price_xpath) %>% html_text() %>%trimws()
print(prices)
book_data<-data.frame(Title=title,Price=prices)
print(book_data)

#d
write.csv(book_data)
