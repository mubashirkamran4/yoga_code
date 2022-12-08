# README

## Solution

My branch name is ```yogaeasy_solution``` with my rails project in  ```yogaeasy_project```.
Although there is only one PR but The solution is present in 3 commits spearately:

1). https://github.com/yogaeasy/cc-rails-mubashirkamran4/commit/98fb80c54b7a33857644368a8cb88e91ce9442ff
with title : ```Basic Models Setup and Ready for Test cases```

contains mainly the models setup in ```app/models/``` directory and migrations in ```db/migrate``` other than many scaffolded code.

2). https://github.com/yogaeasy/cc-rails-mubashirkamran4/commit/39cc7f08377bc6a7eca681ca1cf2e0ba48cd6a42
with title : ```Added TestCases for All Models```

contains mainly the testcases in ```rspec/models/``` directory.

3).https://github.com/yogaeasy/cc-rails-mubashirkamran4/commit/c576c44afeaaecb4a35c6da7f2942e543714ebd1
with title : 
```
CRUD Endpoints from scaffoling,with some Validations adjusted, Filter Videos by Category
```
contains mainly the already scaffolded endpoints and filter endpoint to filter out 
the videos by category.

## Assumptions

A ```video``` must belong to a category and teacher and is youtube video.
A ```teacher```'s thumbnail is basically avatar url of teacher's profile.
Only one ```video``` with same ```title``` can exist under one category.

## How to Run

Navigate to ```yogaeasy_project``` in the terminal and run:

```
bundle install
rails db:create db:migrate
rails s
```

Then open Postman and
-> For CREATING Categories, send POST Request to ```localhost:3000/categories.json``` with params:
```
category[name]= < name of category >
```
-> For READING Categories, send GET Request to ```localhost:3000/categories.json``` which would list all categories

-> For UPDATING Categories, send PATCH Request to ```localhost:3000/categories/< id of any category returned in above READING endpoint >.json``` which would edit the category with passed id and with updated params e.g. as:

```
category[name]= < edited name of category >
```
-> For DESTROYING Categories, send DELETE Request to ```localhost:3000/categories/< id of any category returned in above READING endpoint >.json``` which would delete the category with passed id.



-> For CREATING Teachers, send POST Request to ```localhost:3000/teachers.json``` with params:
```
teacher[name]= < name of teacher >
teacher[thumbnail]= < Avatar URL of Teacher >
```

-> For READING teachers, send GET Request to ```localhost:3000/teachers.json``` which would list all teachers.

-> For UPDATING teachers, send PATCH Request to ```localhost:3000/teachers/< id of any teacher returned in above READING endpoint >.json``` which would edit the teacher with passed id and with udpated params e.g. as:
```
teacher[name]= < edited name of teacher >
teacher[thumbnail]= < Avatar URL >
```

-> For DESTROYING Teachers, send DELETE Request to ```localhost:3000/teachers/< id of any teacher returned in above READING endpoint >.json``` which would delete the teacher with passed id.




-> For CREATING Videos, send POST Request to ```localhost:3000/videos.json``` with params:
```
video[title]= < title of video >
video[url]= < Youtube URL of video >
video[description]= < description of video >
video[category_id]= < id of any category returned in above categories' READING endpoint  >
video[teacher_id]= < id of any teacher returned in above teachers' READING endpoint >

```

-> For READING Videos, send GET Request to ```localhost:3000/videos.json``` which would list all videos.

-> For UPDATING Videos, send PATCH Request to ```localhost:3000/videos/< id of any video returned in above READING endpoint >.json``` which would edit the video with passed id and with udpated params e.g. as:
```
video[title]= < edited title of video >
video[description]= < edited description >
```

-> For DESTROYING Videos, send DELETE Request to ```localhost:3000/videos/< id of any video returned in above READING endpoint >.json``` which would delete the video with passed id.


-> For FILTERING Videos of a specific category, send GET Request to ```localhost:3000/videos.json?category_id= < id of any category returned in above categories' READING endpoint > ``` which would list all videos of that specific category

## Gems Used
```shoulda-matchers``` for test cases of models
```rubocop``` for formatting
