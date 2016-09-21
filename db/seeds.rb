# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Location.create!([{
  latitude: '33°27′04″N   33.45115165',
  longitude: '84°28′39″W   -84.47746155',
  distance: 21.8378,
  bearing: 193.353
  },
  {
  latitude: '34°02′29″N   34.04145679',
  longitude: '84°04′11″W  -84.06980447',
  distance: 26.8257,
  bearing: 43.127
  },
  {
  latitude: '34°00′27″N   34.00760354',
  longitude: '84°24′19″W   -84.4051481',
  distance: 17.232,
  bearing: 357.114
  },
  {
  latitude: '33°32′21″N   33.53919369',
  longitude: '84°21′02″W   -84.35052343',
  distance: 15.3337,
  bearing: 171.47
  },
  {
  latitude: '33°57′31″N   33.95864168',
  longitude: '84°19′46″W   -84.32948201',
  distance: 14.2558,
  bearing: 14.087
  },
  {
  latitude: '33°47′37″N   33.79360378',
  longitude: '84°48′53″W   -84.81473035',
  distance: 24.5202,
  bearing: 275.78
  },
  {
  latitude: '33°42′06″N   33.70175666',
  longitude: '84°36′24″W   -84.60660806',
  distance: 13.0557,
  bearing: 252.547
  },
  {
  latitude: '33°31′18″N   33.5215979',
  longitude: '84°30′15″W   -84.50413673',
  distance: 17.6481,
  bearing: 201.878
  },
  {
  latitude: '33°41′57″N   33.69909706',
  longitude: '84°16′29″W   -84.27462307',
  distance: 7.804,
  bearing: 121.77
  },
  {
  latitude: '33°44′52″N   33.74774811',
  longitude: '83°55′03″W   -83.91736953',
  distance: 27.1707,
  bearing: 91.451
  }
])
