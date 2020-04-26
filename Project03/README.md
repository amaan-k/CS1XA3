
# CS 1XA3 Project03 - <khana251>
## Usage
Install conda enivornment with installing the anaconda distribution which comes with the conda.
create the conda environment with **conda create -n djangoenv python=3.7**
- Activate the conda env with **conda activate djangoenv**
- Deactivate the current environment with **conda deactivate**

- **Run locally with**
python manage.py runserver localhost:8000
- **Run on mac1xa3.ca with**
python manage.py runserver localhost:10058 &


- using the followig code snippet in the shell itself:
python manage.py shell
>>> from social import models
>>> models.UserInfo.objects.create_user_info(username='TestUser',password='1234')
>>> exit

## List of users created users
```markdown
| Username | Password     |
|----------|--------------|
| james    | jamespass123 |
| jake     | jakepass123  |
| bob      | bobpass123   |
| Chris    | chrispass123 |
| Bill     | billpass123  |
| Lexie    | lexiepass123 |
```


## Objective 01
Description:
- this feature is displayed in signup.djhtml which is rendered by
signup_view
- it makes a POST Request from something.js to /e/macid/something_post
which is handled by someting_post_view
Exceptions:
- If the /e/macid/something_post is called without arguments is redirects
to login.djhtml

## Objective 02
Description:
- This feature works on adding User Profile and Interests
- **social_base.djhtm** is to be changed to discplay real Profile and Interests corresponding
to the currently logged in user using Django Template variables.
- User info in models.py has detailed on the attributes which are available.

Exceptions: 
- As of now nothing is displayed in the user interests and the rest of the user info is "unspecified".

## Objective 03
Description: 

- Provide forms to allow the user to change the current password.
- The function def **account_view** and the **account.djhtml** template renders the account settings page.
- Provide forms to allow the user to update the user information such as employment, location, birthday and interests.
- The post requests sent by the forms to update the UserInfo object are handled


## Objective 04
Description: 

- Display all the people list that are not friends of the user
- In the people Page rendered by **view.py** , **people.djhtml**, and **people.js**.
- Before rendering with the changes applied the middle column(People) is just a single static fake person.
- A for loop is used in **people.djhtml** to display all the people.
- Only a certain number of users are displayed and on clicking the more button more people are to be displayed.

Exception:
- If a user encountered is in the friend list of the user, then it is not displayed here.

## Objective 08
Description:

- The objective is to create a post by the user.
- **messages.js** submits the **AJAX POST**
- The contents of **post-text** are sent to **post_submit_view** and the page is reloaded.
- The post are currently not displayed which brings us to objective 9.

## Objective 09
Description:

- **messages_view** is changed to display the post and **postlim** is introduced to limit the number of posts being displayed at a time. 
- **more_post_view** is edited to make the number of posts increase by 1 post each time.
- Corresponding changes are made to **messages.djhtml** and a for loop and a counter is inrtroduced to display another post every time the more button is clicked.
- The number of posts displayed are reset once to user logs out.
