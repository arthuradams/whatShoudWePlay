# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

players = Player.create([{ "name": 'Arthur'},
                        { "name": 'Mark'},
                        { "name": 'Erik with a K'},
                        { "name": 'Charity'},
                        { "name": 'Joe'},
                        { "name": 'Redmond'},]
                        )



games = Game.create([{ name: 'Dominion',
                        min_players: 2,
                        max_players: 6,
                        length: 45,
                        player_id: players[0].id,
                        url1: 'http://boardgamegeek.com/boardgame/36218/dominion',
                        url1_desc: 'BGG Description',
                        url2: 'http://riograndegames.com/Game/278-Dominion',
                        url2_desc: 'Manufacturer Description',
                      },
                      { name: 'Up Front',
                        min_players: 2,
                        max_players: 3,
                        length: 120,
                        player_id: players[0].id,
                        url1: "https://boardgamegeek.com/boardgame/586/front",
                        url1_desc: "BGG Link",
                      },
                      { name: 'Through the Ages',
                        min_players: 2,
                        max_players: 4,
                        length: 360,
                        player_id: players[0].id,
                        url1: "https://boardgamegeek.com/boardgame/182028/through-ages-new-story-civilization",
                        url2: "http://czechgames.com/en/through-the-ages/",
                        url1_desc: "BGG Link",
                        url2_desc: "Manufacturer Link"
                      },
                      { name: 'Settlers of Catan',
                        min_players: 2,
                        max_players: 4,
                        length: 120,
                        player_id: players[1].id
                      },
                      { name: 'Merchants and Marauders',
                        min_players: 2,
                        max_players: 4,
                        length: 360,
                        player_id: players[2].id
                      },
                      { name: 'Gunslinger',
                        min_players: 2,
                        max_players: 2,
                        length: 30,
                        player_id: players[2].id
                      },
                      { name: 'Race for the Galaxy',
                        min_players: 2,
                        max_players: 6,
                        length: 75,
                        player_id: players[3].id
                      },
                      { name: 'Arkham Horror',
                        min_players: 2,
                        max_players: 10,
                        length: 560,
                        player_id: players[4].id
                      },
                      { name: 'Mega-Civilization',
                        min_players: 2,
                        max_players: 15,
                        length: 1200,
                        player_id: players[4].id
                      },
                      { name: 'Battlestar Galactica',
                        min_players: 3,
                        max_players: 7,
                        length: 480,
                        player_id: players[4].id
                      },
                      { name: 'Campaign for North Africa',
                        min_players: 2,
                        max_players: 10,
                        length: 60000,
                        player_id: players[5].id
                      },

                      ])
