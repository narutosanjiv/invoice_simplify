# Install Instruction
  * bundle install 
  * rake db:create
  * rake db:migrate
  * rake db:seed
  * rails s
 
 # Assumption
 
 Invoice get created once payment done for items.
 
 # Menu
  * Product
  * Shopping Cart
  * Invoices
  * SignOut

 
 
 
 # Create a Invoice functionality'
 
  *  Add Item to a Cart
  *  Checkout and Add Payment Details
  *  Save payment Details
  *  Invoice get shown with two price(USD and GBP)
  *  Both Payment and Invoice model get created 

 # Allows invoices to be accessible via a JSON API 
 
  1) Show Invoice for particular user by providing invoice_number
     * URL:  <b>api/v1/users/invoices/#{invoice_id}?email=#{email_id} </b>
       
       - Example request format in CURL:
         ```
           curl --request GET --url 'http://localhost:3000/api/v1/users/invoices/9dbcd940266b5f6ff6b6a9e513a432d0?email=test%40test.com' --header 'authorization: Token token=17b3a122d07b1812db760b1e06b5b52f5e9660dfd403733d3e0de57c4a503caeddb1f80baa188b501612a10e5bd14fef06c3555ebf2121f313d36adc48632bb0' --header 'content-type: application/json'
         ```
         
         - Response
         ```json
         {
             "number": "9dbcd940266b5f6ff6b6a9e513a432d0",
             "invoice_date": "2017-08-03",
             "price_in_gbp": 533.071,
             "address": {
                "id": 5,
                "street1": "asasas",
                "street2": null,
                "city": "asasas",
                "pincode": "411031",
                "country": "India",
                "mobile_no": null,
                "email": "narutosanjiv@gmail.com",
                "first_name": "Sanjiv",
                "last_name": "Jha",
                "state": "MH",
                "phone_no": "109887771"
             },
             "payment": {
                "transaction_type": "credit",
                "amount": 700,
                "card_type": "MasterCard"
             }
         }
      ```
      
  2) List Invoice for particular user
     
     * URL: <b> api/v1/users/invoices?email=#{email_id} </b>
       - Example request format in CURL:
       ```
          curl --request GET --url 'http://localhost:3000/api/v1/users/invoices?email=test%40test.com' --header 'authorization: Token token=17b3a122d07b1812db760b1e06b5b52f5e9660dfd403733d3e0de57c4a503caeddb1f80baa188b01612a10e5bd14fef06c3555ebf2121f313d36adc48632bb0' --header 'content-type: application/json' 
       ````

       - Response
       
       ```javascript
       
        [ {
        "number": "6fa8db11e569a80bb7b0354445873f73",
        "invoice_date": "2017-08-03",
        "price_in_gbp": 609.224,
        "address": {
            "id": 3,
            "street1": "asasas",
            "street2": null,
            "city": "asasas",
            "pincode": "411031",
            "country": "India",
            "mobile_no": null,
            "email": "narutosanjiv@gmail.com",
            "first_name": "Sanjiv",
            "last_name": "Jha",
            "state": "MH",
            "phone_no": "9762434156"
        },
        "payment": {
            "transaction_type": "credit",
            "amount": 800,
            "card_type": "MasterCard"
        }
    },
    {
        "number": "e9abf6278131f2f1a69e2b88f35ce36d",
        "invoice_date": "2017-08-03",
        "price_in_gbp": 304.612,
        "address": {
            "id": 4,
            "street1": "asasas",
            "street2": null,
            "city": "asasas",
            "pincode": "411031",
            "country": "India",
            "mobile_no": null,
            "email": "narutosanjiv@gmail.com",
            "first_name": "Sanjiv",
            "last_name": "Jha",
            "state": "MH",
            "phone_no": "9762434156"
        },
        "payment": {
            "transaction_type": "credit",
            "amount": 400,
            "card_type": "MasterCard"
        }
    },
    {
        "number": "9dbcd940266b5f6ff6b6a9e513a432d0",
        "invoice_date": "2017-08-03",
        "price_in_gbp": 533.071,
        "address": {
            "id": 5,
            "street1": "asasas",
            "street2": null,
            "city": "asasas",
            "pincode": "411031",
            "country": "India",
            "mobile_no": null,
            "email": "narutosanjiv@gmail.com",
            "first_name": "Sanjiv",
            "last_name": "Jha",
            "state": "MH",
            "phone_no": "109887771"
        },
        "payment": {
            "transaction_type": "credit",
            "amount": 700,
            "card_type": "MasterCard"
        }
    },
    {
        "number": "19c9ff8c06f39fba1caeab2915678239",
        "invoice_date": "2017-08-04",
        "price_in_gbp": 76.153,
        "address": {
            "id": 6,
            "street1": "",
            "street2": null,
            "city": "",
            "pincode": "",
            "country": "India",
            "mobile_no": null,
            "email": "",
            "first_name": "",
            "last_name": "",
            "state": "",
            "phone_no": ""
        },
        "payment": {
            "transaction_type": "credit",
            "amount": 100,
            "card_type": "MasterCard"
        }
    }]
```