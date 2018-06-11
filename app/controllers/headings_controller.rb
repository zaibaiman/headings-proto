class HeadingsController < ApplicationController
    def index
        @headings = Heading.all
    end

    def show
        @heading = Heading.find(params[:id])
    end

    def new
        @heading = Heading.new
    end

    def edit
        @heading = Heading.find(params[:id])
    end

    def create
        puts "params: #{params}"

        @heading = Heading.new do |u|
            heading_params(u)
        end
        @heading.save!
        redirect_to headings_path
    end

    def update
        @heading = Heading.find(params[:id])
        @heading.tap do |u|
            heading_params(u)
        end

        if !@heading.save!
            render 'edit'
        end
        redirect_to headings_path
    end

    def destroy
        @heading = Heading.find(params[:id])
        @heading.destroy
        redirect_to headings_path
    end

private
    def heading_params(u)
        u.home_url = params[:home_url]
        u.meta_title = params[:meta_title]
        u.meta_description = params[:meta_description]
        u.heading = params[:heading]
        u.subtitle = params[:subtitle]
        u.solid_color = params[:solid_color]
        u.image = params[:image]
        u.remove_image = params[:remove_image] || nil
        u.mp4_video = params[:mp4_video]
        u.remove_mp4_video = params[:remove_mp4_video] || nil
        u.webm_video = params[:webm_video]
        u.remove_webm_video = params[:remove_webm_video] || nil

        # slab1
        u.slab1_color = params[:slab1_color]
        u.slab1_opacity = params[:slab1_opacity]
        u.slab1_txt_color = params[:slab1_txt_color]
        u.slab1_txt_opacity = params[:slab1_txt_opacity]
        u.slab1_txt_roll_color = params[:slab1_txt_roll_color]
        u.slab1_txt_roll_opacity = params[:slab1_txt_roll_opacity]
        u.slab1_txt_sel_color = params[:slab1_txt_sel_color]
        u.slab1_txt_sel_opacity = params[:slab1_txt_sel_opacity]

        # slab2
        u.slab2_color = params[:slab2_color]
        u.slab2_opacity = params[:slab2_opacity]
        u.slab2_txt_color = params[:slab2_txt_color]
        u.slab2_txt_opacity = params[:slab2_txt_opacity]
        u.slab2_txt_roll_color = params[:slab2_txt_roll_color]
        u.slab2_txt_roll_opacity = params[:slab2_txt_roll_opacity]
        u.slab2_txt_sel_color = params[:slab2_txt_sel_color]
        u.slab2_txt_sel_opacity = params[:slab2_txt_sel_opacity]
    end
end
