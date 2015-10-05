standards_boards = [
    {
        user: 1,
        reason: '',
        position: 1,
        completed: true
    },
    {
        user: 1,
        reason: '',
        position: 2,
        completed: true
    },
    {
        user: 2,
        reason: '',
        position: 1,
        completed: true
    },
    {
        user: 3,
        reason: '',
        position: 2,
        completed: true
    },
    {
        user: 4,
        reason: '',
        position: 5,
        completed: true
    },
    {
        user: 3,
        reason: '',
        position: 4,
        completed: true
    },
    {
        user: 2,
        reason: '',
        position: 3,
        completed: true
    },
    {
        user: 1,
        reason: '',
        position: 6,
        completed: true
    },
    {
        user: 2,
        reason: '',
        position: 4,
        completed: true
    }
]

StandardsBoard.delete_all
StandardsBoard.create!(standards_boards)