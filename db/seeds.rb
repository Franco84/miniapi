# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

@link = "https://global.api.pvp.net/api/lol/static-data/na/v1.2/champion?champData=tags&api_key=RGAPI-780468b9-126f-452c-9602-3129eb592c12"
@parse = JSON.parse(open(@link).read)

@parse["data"].each do |element|
  @c = Champion.create(name: element[1]["name"], title: element[1]["title"])

  element[1]["tags"].each do |tag|
    @r = Role.find_or_create_by(name: tag)
    ChampionRole.create(champion_id: @c.id, role_id: @r.id)
  end
end
