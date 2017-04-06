class ComicsController < ApplicationController

  def index
    @Comics = Comic.all
  end

  def show
    @comic = Comic.find(params[:id])

    # getting character names
    array = []
    array2 = []
    activeRec = @comic.characters.to_a


    h = Hash.new
    activeRec.each do |x| 
        meta = MetaCharacter.find(x.meta_character_id)
        array.push(meta.name)
        str = meta.name

        str2 = (x.first_name || "") + (x.last_name || "")
        str2 = str2.gsub("null", "")

        if not str2.empty?
            str2 = " - " + str2
        end 

        str = str + str2
        h[str] = meta.id

    end
    @comicChars = h.keys.uniq   # and access the keys as @comicChars.keys
    @comicCharsHash = h

    array = []
    activeRec = @comic.creators.to_a
    activeRec.each {|x| array.push(x.name)}
    @comicCreators = array.uniq

    temp = "comicImages/#{@comic.image_name}.jpg"
    temp = temp.gsub(/\s+/, "")
    temp = temp.gsub '[', ''
    temp = temp.gsub ']', ''
    temp = temp.gsub '...', ''
    temp = temp.gsub '?', ''
    @imageName = temp



    temp = "comicImages/#{@comic.image_name}_thumb.jpg"
    temp = temp.gsub(/\s+/, "")
    temp = temp.gsub '[', ''
    temp = temp.gsub ']', ''
    temp = temp.gsub '...', ''
    temp = temp.gsub '?', ''
    @imageNameThumb = temp

    # make sure there's no spaces in the titles next time dumbass
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end




end
