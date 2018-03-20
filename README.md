# README


Basic books and authors  build on Ruby on Rails. 

Authors has many Books
Books belong to an Author

Data is seeded with Faker gem data. 
 


 URL: 'https://morning-shore-28838.herokuapp.com/api/v1'

Books:  GET: '/books'

        
        POST: '/books'
       
        "book":
         {"title":`title`,
          "genre":`genre`,
          "author_id": `author_id`}
        

  

Authors: GET: '/authors'

        
        POST:'/authors'
        
             "author":
             {"name":`name}`,
              "url":`url`}
                  
         
