interview_times = [
    #Day 1
    {
        rush_interview_id: 1,
        interview_time: Time.now,
        interview_date: Date.today
    },
    {
        rush_interview_id: 2,
        interview_time: Time.now + 30.minutes,
        interview_date: Date.today
    },
    {
        rush_interview_id: 3,
        interview_time: Time.now + 1.hour,
        interview_date: Date.today
    },
    {
        rush_interview_id: 4,
        interview_time: Time.now + 1.hour + 30.minutes,
        interview_date: Date.today
    },
    {
        rush_interview_id: 5,
        interview_time: Time.now + 2.hour,
        interview_date: Date.today
    },
    {
        rush_interview_id: 6,
        interview_time: Time.now + 2.hour + 30.minutes,
        interview_date: Date.today
    },
    #Day 2
    {
        rush_interview_id: 7,
        interview_time: Time.now,
        interview_date: Date.today + 1.day
    },
    {
        rush_interview_id: 8,
        interview_time: Time.now + 30.minutes,
        interview_date: Date.today + 1.day
    },
    {
        rush_interview_id: 9,
        interview_time: Time.now + 1.hour,
        interview_date: Date.today + 1.day
    },
    {
        rush_interview_id: 10,
        interview_time: Time.now + 1.hour + 30.minutes,
        interview_date: Date.today + 1.day
    },
    {
        rush_interview_id: 11,
        interview_time: Time.now + 2.hour,
        interview_date: Date.today + 1.day
    },
    {
        rush_interview_id: 12,
        interview_time: Time.now + 2.hour + 30.minutes,
        interview_date: Date.today + 1.day
    },
    #Day 3
    {
        rush_interview_id: 13,
        interview_time: Time.now,
        interview_date: Date.today + 2.day
    },
    {
        rush_interview_id: 14,
        interview_time: Time.now + 30.minutes,
        interview_date: Date.today + 2.day
    },
    {
        rush_interview_id: 15,
        interview_time: Time.now + 1.hour,
        interview_date: Date.today + 2.day
    },
    {
        rush_interview_id: 16,
        interview_time: Time.now + 1.hour + 30.minutes,
        interview_date: Date.today + 2.day
    },
    {
        rush_interview_id: 17,
        interview_time: Time.now + 2.hour,
        interview_date: Date.today + 2.day
    },
    {
        rush_interview_id: 18,
        interview_time: Time.now + 2.hour + 30.minutes,
        interview_date: Date.today + 2.day
    }
]
InterviewTime.create!(interview_times)
