users = [ 
  {
    email: 'pmd6624@rit.edu',
    first_name: 'Paul', 
    last_name: 'Darragh', 
    profile_picture:'http://media.tumblr.com/tumblr_m9l2a5bb9c1qdt6li.jpg', 
    phone_number: '5088388579', 
    home_town: 'North Attleboro', 
    state: 'MA', 
    big_brother:'AJ Broderick', 
    major:'Software Engineering', 
    confirmed_brother: true, 
    user_status: 'potential new member',
    :password => 'topsecret', 
    :password_confirmation => 'topsecret'
  },
  {
    email: 'pmdpkt@gmail.com', 
    first_name: 'Michael', 
    last_name: 'Hgarrad', 
    profile_picture:'https://s-media-cache-ak0.pinimg.com/736x/a8/16/dd/a816dd31279850cbe23d5640fe062f50.jpg', 
    phone_number: '123388579', 
    home_town: 'Allentown', 
    state: 'PA', 
    big_brother:'Paul Darragh', 
    major:'Biomedical Engineering', 
    confirmed_brother: false, 
    user_status: 'current brother', 
    :password => 'topsecret', 
    :password_confirmation => 'topsecret'
  },
  {
    email: 'pmdspam@gmail.com', 
    first_name: 'Tall Paul', 
    last_name: 'Darragh', 
    profile_picture:'http://d3imyo1kk0rcam.cloudfront.net/wp-content/uploads/2013/10/e08a7fc9f71eea6f6926ea1b44a87b73866352405.jpg', 
    phone_number: '2348388579', 
    home_town: 'Rochester', 
    state: 'NY', 
    big_brother:'Austin Glick', 
    major:'Mechanical Engineering', 
    confirmed_brother: true, 
    user_status: 'associate member', 
    :password => 'topsecret', 
    :password_confirmation => 'topsecret'
  },
  { 
    email: 'tim@smith.com', 
    first_name: 'Tim', 
    last_name: 'Smith', 
    profile_picture:'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSbQvJa54_7TVRxQzJWQEGM7sesOqps6wheAmVJ3bnX6m84gVOREw', 
    phone_number: '3458388579', 
    home_town: 'Springfeild', 
    state: 'MA', 
    big_brother:'Brandon Nieves', 
    major:'Electrical Engineering', 
    confirmed_brother: true, 
    user_status: 'alumni', 
    :password => 'topsecret', 
    :password_confirmation => 'topsecret'
  },
  {
    email: 'matt@rollings.com', 
    first_name: 'Matt', 
    last_name: 'Rollings', 
    profile_picture:'http://www.collegedebauchery.com/wp-content/uploads/2013/08/awesome-fraternity-composite-photos-06.jpg', 
    phone_number: '4568388579', 
    home_town: 'New York city', 
    state: 'NY', 
    big_brother:'Scott Hogan', 
    major:'Hospitality Management', 
    confirmed_brother: true, 
    user_status: 'current brother', 
    :password => 'topsecret', 
    :password_confirmation => 'topsecret'
  },
  {
    email: 'george@denison.com', 
    first_name: 'George', 
    last_name: 'Denison', 
    profile_picture:'http://www.collegedebauchery.com/wp-content/uploads/2013/08/awesome-fraternity-composite-photos-33.jpg', 
    phone_number: '5678388579', 
    home_town: 'Ithaca', 
    state: 'NY', 
    big_brother:'Mark Eddy', 
    major:'Accounting', 
    confirmed_brother: true, 
    user_status: 'coop',
    :password => 'topsecret', 
    :password_confirmation => 'topsecret'
  }
]
User.create!(users)
