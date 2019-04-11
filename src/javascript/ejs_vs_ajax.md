# EJS vs Ajax

* EJS is a templating language used in Express.
    * This allows the **server** to insert data dynamically into templates that are basically HTML.
    * This means data can be inserted before the webpage is returned to the browser.
* Ajax is a way for webpages that are already loaded on the browser to make HTTP requests.
    * This means that existing webpages can make HTTP requests, then use those responses to insert new data into itself.
    * This also means *more* HTTP requests as the webpage first needs to be requested.
