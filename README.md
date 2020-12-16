
# citizen_report

What a great joy applying the concepts I have learnt and seen them taking shape. It is very rewarding making a thought a reality. It is my pleasure to introduce my app sinatra “Citizen Report” which solves a huge problem especially in the cities. Being able to report and work together as fellow citizens to keep our cities safe. Creating a more conscious community and environment will make us think different.

Models

My MVC sinatra application includes two models: Users and reports. These model files include class definitions and associations. They inherite from ActiveRecord::Base where you can see the magic of metaprogramming.

Views Our views is where we show our client our forms and allow them interact with the app. Either by having information submitted or displayed.

Controllers Controllers allow us to use our http verbs and routes so our client is always directed to the right place.

Associations Thanks to our associations we get to see a structure where a user has many reports and a report belongs to a user. Every report belongs to its maker making it precise and accurate to a real world interaction.

Sessions

Sessions help us with our user accounts as they are able to create a new account, log in, and log out.

CRUD

CRUD actions allow us to give our user the experience of creating, reading, updating, and deleting. This make our app interactive and useful to report all those problems and situation we citizens encounter on a daily basis.

Db

The app’s database included a users’ table which included username, email, password digest and timestamps. While the reports’ table included content, user_id and timestamps.

Corneal Gem

Thanks to Corneal Gem I was able to get a basic structure for my sinatra app and focus on coding and any extra tasks.

Conclusion

I like how technology has help us enhance our abilities and get us closer to make a cleaner, conscious, and educated community. Code and computers has taken us very far, what is possible is endless and we get to be here. Now.

Copyright <2020> <Bromaster369>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
