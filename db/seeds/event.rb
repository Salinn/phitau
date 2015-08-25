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
        start_time: (Time.now + 24.hours),
        end_time: (Time.now + 26.hours),
        event_date: Date.today,
        required_event: true,
        private_event: false,
        user_id: 1
    },
    {
        name: 'Recruitment 3',
        description: 'Something that deals with recruitment',
        start_time: (Time.now + 42.hours),
        end_time: (Time.now + 44.hours),
        event_date: Date.today,
        required_event: false,
        private_event: false,
        user_id: 1
    },
    {
        name: 'Recruitment 4',
        description: 'Something that deals with recruitment',
        start_time: (Time.now - 4.hours),
        end_time: (Time.now - 2.hours),
        event_date: Date.today,
        required_event: false,
        private_event: true,
        user_id: 1
    },
    {
        name: 'Recruitment 5',
        description: 'Something that deals with recruitment',
        start_time: (Time.now - 72.hours),
        end_time: (Time.now + 70.hours),
        event_date: Date.today,
        required_event: false,
        private_event: false,
        user_id: 1
    },
]
Event.create!(events)
