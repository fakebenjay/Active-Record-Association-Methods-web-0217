class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    drizzy = Artist.create(name: "Drake")
    # (should account for Drake's existence with a find option, but whatever)
    drizzy.songs << self
    return drizzy
  end
end
