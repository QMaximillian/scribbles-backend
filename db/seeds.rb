# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# MeetingRange.create(begin_date: "Fri, 11 Jan 2019", end_date: "Sun, 13 Jan 2019", cut_off_early: "2019-01-11 07:00:00 -0400", cut_off_late: "2019-01-13 11:00:00 -0400")
#
# MeetingTime.create(meeting_range_id: 1, day: "2019-01-11", begin_time: "2019-01-11 07:00:00 -0400", end_time: "2019-01-11 07:30:00 -0400")
#
# MeetingTime.create(meeting_range_id: 1, day: "2019-01-11", begin_time: "2019-01-11 07:30:00 -0400", end_time: "2019-01-11 08:00:00 -0400")

User.create(email: "quinnlashinsky@gmail.com", meeting_range_id: 1)

# MeetingTime.create(user_id: 1, day: "2019-01-11", begin_time: "2019-01-11 07:00:00 -0400", end_time: "2019-01-11 07:30:00 -0400")
