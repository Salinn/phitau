events = [
    {
        name: 'Recruitment 1',
        description: 'Something that deals with recruitment',
        start_time: Time.now,
        end_time: (Time.now + 2.hours),
        event_date: Date.today,
        required_event: true,
        private_event: true,
        user_id: 1
    },
    {
        name: 'Recruitment 2',
        description: 'Something that deals with recruitment',
        start_time: (Time.now),
        end_time: (Time.now + 2.hours),
        event_date: Date.today,
        required_event: false,
        private_event: true,
        user_id: 1
    },
    {
        name: 'Recruitment 3',
        description: 'Something that deals with recruitment',
        start_time: Time.now,
        end_time: (Time.now + 2.hours),
        event_date: Date.today + 7.days,
        required_event: false,
        private_event: false,
        user_id: 1
    },
    {
        name: 'Recruitment 4',
        description: 'Something that deals with recruitment',
        start_time: Time.now,
        end_time: (Time.now + 2.hours),
        event_date: Date.today + 12.days,
        required_event: false,
        private_event: false,
        user_id: 1
    },
    {
        name: 'Recruitment 5',
        description: 'Something that deals with recruitment',
        start_time: Time.now,
        end_time: (Time.now + 2.hours),
        event_date: Date.today + 17.days,
        required_event: false,
        private_event: false,
        user_id: 1
    },
]
Event.create!(events)
