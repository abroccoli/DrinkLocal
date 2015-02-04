State.delete_all

states = State.create!([
  {name: 'Massachusetts', abrev: 'MA'},
  {name: 'New Hampshire', abrev: 'NH'},
  {name: 'Vermont', abrev: 'VT'}
])
=begin
State.create!(name: 'Massachusetts', abrev: 'MA')
State.create!(name: 'New Hampshire', abrev: 'NH')
State.create!(name: 'Vermont', abrev: 'VT')
=end


Brewery.delete_all

Brewery.create!(name: 'Idle Hands', location: '3 Charlton Street, Building 3, Unit 4 in Everett', about: 'Based in Everett, Massachusetts, Idle Hands Craft Ales is the Boston area’s first “nanobrewery”.  We started our operations in August 2011 by brewing a mere 1 1/2 barrels at a time.  That amount translates to about 20 cases of 12 x 750 ml bottles…so ultimately, not a lot of beer!  In August 2013, we just completed an expansion of over five-fold to a 5 barrel system with much larger fermenters. That ultimately means = MORE BEER!', url: 'http://www.idlehandscraftales.com', tours_?: true, hours: {Thursday: '3 - 7pm', Friday: '5 - 8pm', Saturday: '12 - 5pm'}, state: states[0])

