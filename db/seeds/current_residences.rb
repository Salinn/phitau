residences = [
    {
        building_name: 'Global Village',
        map_location: 0,
        dorm_side: false
    },
    {
        building_name: 'Park Point',
        map_location: 0,
        dorm_side: false
    },
    {
        building_name: 'Colby A',
        map_location: 0,
        dorm_side: true
    },
    {
        building_name: 'Colby F',
        map_location: 0,
        dorm_side: true
    },
    {
        building_name: 'NRH',
        map_location: 0,
        dorm_side: true
    },
    {
        building_name: 'Sol',
        map_location: 0,
        dorm_side: true
    },
]
CurrentResidence.delete_all
CurrentResidence.create!(residences)