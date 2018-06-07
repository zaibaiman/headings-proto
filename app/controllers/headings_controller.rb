class HeadingsController < ApplicationController
    def new
    end

    def create
        puts "title: #{params[:title]}"
        redirect_to headings_path
    end
end
