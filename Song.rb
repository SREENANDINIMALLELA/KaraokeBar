class Song
  attr_reader :title  ,:album , :artist , :type
  def initialize( title  ,album , artist , type )
    @title = title
    @album = album
    @artist = artist
    @type = type
  end
end
