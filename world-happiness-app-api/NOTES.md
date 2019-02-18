Requirements:
--------------------
2 container components:

5 stateless components:
  1) Info
  2) 


TODO:
--------------------
1) Add comment column to country db
2) Create comment model and/or user model?? Or should I do this in React only?

<!-- 3) Display list of countries on homepage using React
  a) use fetch() to get the info from Rails API -->
3.5) Decouple App from Home page?? 

3.75) Set up Router

4) create 3 React routes (use react-router):
  a) root '/' Displays list of all countries, with ranking and score - with link to #show page
  b) each country can be clicked on to go to /#country_id
  c) Country show page displays the rest of the data for that country and a picture (maybe!)
  d) Users can click on /#info to learn more about how the countries are 'graded' and links to relevent info
  e) users can leave a comment on the country show page. I really want to avoid making a login feature for now, so perhaps they can just create/delete a comment and manually input their name.  In the future I can add login.

5) add async - maybe while adding/deleting comment - or displaying more info on country show page.  use redux-thunk

6) add styling - perhaps bootstrap react 



