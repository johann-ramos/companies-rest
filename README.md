**Companies**
----
  Manage companies and owners in the database.

**URL:** /companies/

1. **Method:** `GET`

    **URL Params** None

    **Data Params:** None

    **Success Response:**

    * **Code:** 200 <br />
        **Content:** 
        `{"companies":[{"id":3,"name":"Google","address":"123 Road","city":"Santiago","country":"Chile","email":"m1@email.com","phone":"123455","ownerships":[{"name":"Larry Page"}]}]}`
 
    **Error Response:** None

    **Sample Call:** ```curl -H "Content-Type: application/json" http://localhost:3000/owners```

2. **Method:** `POST`

    **Required:** None

    **Data Params:** ```{"name":"Apple", "address":"3º Road", "city":"Santiago", "country": "Chile"}```

    **Success Response:**

    * **Code:** 201 <br />
        **Content:** 
        ```{"company":{"id":9,"name":"Apple","address":"3º Road","city":"Santiago","country":"Chile","email":null,"phone":null,"ownerships":[]}}```
 
    **Error Response:** TODO

    **Sample Call:** ```curl -v -H "Content-Type: application/json" -X POST -d '{"name":"Apple", "address":"3º Road", "city":"Santiago", "country": "Chile"}' http://localhost:3000/companies```
    

3. **Method:** `GET`

    **URL Params** id=[integer]

    **Data Params:** None

    **Success Response:**

    * **Code:** 200 <br />
        **Content:** 
        ```{"company":{"id":3,"name":"Google","address":"123 Road","city":"Santiago","country":"Chile","email":null,"phone":null,"ownerships":[{"name":"Larry Page"}]}}```
 
    **Error Response:**
    * **Code:** 404 <br />
        **Content:** ```{error: "Company doesn't exist}```

    **Sample Call:** ```curl -H "Content-Type: application/json" http://localhost:3000/companies/3```
    
4. **Method:** `PUT`

    **URL Params** id=[integer]

    **Data Params:** (Data to modify) ```{"email":"mail1@mail.com"}```

    **Success Response:**

    * **Code:** 200 <br />
        **Content:** 
        ```{"company":{"id":3,"name":"Google","address":"123 Road","city":"Santiago","country":"Chile","email":"mail@mail.com","phone":null,"ownerships":[{"name":"Larry Page"}]}}```
 
    **Error Response:** TODO

    **Sample Call:** ```curl -v -H "Content-Type:application/json" -X PUT http://localhost:3000/companies/3 -d '{"email":"mail@mail.com"}'```

**URL:** /owners/

1. **Method:** `POST`

    **Required:** None

    **Data Params:** ```{"name":"Elon Musk"}```

    **Success Response:**

    * **Code:** 201 <br />
        **Content:** 
        ```{"owner":{"id":7,"name":"Elon Musk","ownerships":[]}}```
 
    **Error Response:** TODO

    **Sample Call:** ```curl -v -H "Content-Type: application/json" -X POST -d '{"name":"Elon Musk"}' http://localhost:3000/owners```
    
**URL:** /ownerships/

1. **Method:** `POST`

    **Required:** None

    **Data Params:** ```{"company_id":10,"owner_id":7}```

    **Success Response:**

    * **Code:** 201 <br />
        **Content:** 
        ```{"ownership":{"name":"Elon Musk"}}```
 
    **Error Response:** TODO

    **Sample Call:** ```curl -v -H "Content-Type: application/json" -X POST -d '{"company_id":10, "owner_id":7}' http://localhost:3000/ownership```