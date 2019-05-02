class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end
    def show
        @tag = Tag.find(params[:id])
    end
    def destroy
        @tags = Tag.all
        @tags.each do |tag|
            tag.destroy
        end
        redirect_to tags_path
    end
end
