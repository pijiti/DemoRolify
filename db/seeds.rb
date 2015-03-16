#  __________         _____________         _________         __________
# |          |       |             |       |         |       |          |
# |   User   |___    | users_roles |    ___|  Role   |_______|  School  |
# |          | 1 |   |             |   | 1 |         | n   1 |          |
# |__________|   |   |_____________|   |   |_________|       |__________|
#                |   |             |   |
#                |   |   role_id   |___|
#                |   |_____________| n
#                |   |             |
#                |___|   user_id   |
#                  n |_____________|
#                       join table
#

# Jack is head teacher in School A
# Jack is teacher in School A , School B and School C
# Fred is a student in School C
# Mark is a teacher and driver in school B

## Users

# jack = User.create! name: 'Jack', phone: '1357'
# fred = User.create! name: 'Fred', phone: '2468'
# mark = User.create! name: 'Mark', phone: '9700'


## Schools

school_a = School.create! name: 'School A'
school_b = School.create! name: 'School B'
school_c = School.create! name: 'School C'


## Roles

school_a.roles.create! name: 'Head Teacher'
school_a.roles.create! name: 'Teacher'
school_a.roles.create! name: 'Student'
school_a.roles.create! name: 'Driver'

school_b.roles.create! name: 'Head Teacher'
school_b.roles.create! name: 'Teacher'
school_b.roles.create! name: 'Student'
school_b.roles.create! name: 'Driver'

school_c.roles.create! name: 'Head Teacher'
school_c.roles.create! name: 'Teacher'
school_c.roles.create! name: 'Student'
school_c.roles.create! name: 'Driver'
