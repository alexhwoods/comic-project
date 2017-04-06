class MetaCharactersController < ApplicationController
    def index
    end

    def show
        @metaChar = MetaCharacter.find(params[:id])

        if !@metaChar.page_name.nil?
            # do stuff here
            render template: "meta_characters/#{@metaChar.page_name}"
        else
            # render dummy page that says
            # "this character does not have a page"
            render template: "meta_characters/dummy_page"
        end
        
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
