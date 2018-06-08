class HeadingsController < ApplicationController
    def index
        @headings = Heading.all
    end

    def show
        @heading = Heading.find(params[:id])
    end

    def new
    end

    def edit
        puts "id: #{params[:id]}"
        @heading = Heading.find(params[:id])
    end

    def create
        @heading = Heading.new do |u|
            u.meta_title = params[:meta_title]
            u.meta_description = params[:meta_description]
            u.heading = params[:heading]
            u.subtitle = params[:subtitle]
            u.solid_color = params[:solid_color]
        end
        @heading.save
        redirect_to @heading
    end

    def destroy
        @heading = Heading.find(params[:id])
        @heading.destroy
        redirect_to headings_path
    end

private
    def heading_params
        params.require(:article).permit(:meta_title, :meta_description)
    end
end
