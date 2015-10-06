standards_boards = [
    {
        user_id: 1,
        reason: '',
        position_id: 1,
        completed: true
    },
    {
        user_id: 1,
        reason: '',
        position_id: 2,
        completed: true
    },
    {
        user_id: 2,
        reason: '',
        position_id: 1,
        completed: false
    },
    {
        user_id: 3,
        reason: '',
        position_id: 2,
        completed: true
    },
    {
        user_id: 4,
        reason: '',
        position_id: 5,
        completed: false
    },
    {
        user_id: 3,
        reason: '',
        position_id: 4,
        completed: true
    },
    {
        user_id: 2,
        reason: '',
        position_id: 3,
        completed: true
    },
    {
        user_id: 1,
        reason: '',
        position_id: 6,
        completed: true
    },
    {
        user_id: 2,
        reason: '',
        position_id: 4,
        completed: false
    }
]

StandardsBoard.delete_all
StandardsBoard.create!(standards_boards)