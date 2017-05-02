class MetaCharactersController < ApplicationController
    def index
    end

    def show
        @metaChar = MetaCharacter.find(params[:id])
        @page = @metaChar.page

        if !@metaChar.parent_mc_id.nil?
            @metaChar = MetaCharacter.find(@metaChar.parent_mc_id)
            @page = @metaChar.page
        end

        if @page.nil?
            # send to a dummy page!
            @page = Page.new(:page => '<h1> This character has no page, sorry! </h1>')
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
