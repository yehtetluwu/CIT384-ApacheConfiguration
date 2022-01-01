# CIT384-ApacheConfiguration

# We had to create a dockerfile that will do the followings. The background scenerio is that you aer hired by a startup company and asked to creat a company website because the management has recently chaged. 

1. Create a splash page for the company
- Come up with company name and a simple product
- Build a simple webpage for this company
- Install the web page at the [DocumentRoot](https://httpd.apache.org/docs/2.4/mod/core.html#documentroot) location of your web server.
1. Build a simple company directory
- Come up with 5 individuals for the company
- Create 5 user accounts for each contact
- Create a simple splash page for each contact
- Create Alias for each of those contacts
1. Give a portion of a webpage to the marketing team
- Marketing team controls `"/"` and `"/promotions"`
- Create an Alias to reposition DocumentRoot
- Create a error page called `forbidden.html` for 404 requests
- Create a error page called `not-found.html` for 403 requests
- Update vHost file with the custom error documents
1. The company is now sold and come up with a new company name
- Force a redirect to the new company name
