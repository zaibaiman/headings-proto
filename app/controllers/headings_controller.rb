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
        @heading = Heading.new do |u|
            u.meta_title = params[:meta_title]
            u.meta_description = params[:meta_description]
            u.heading = params[:heading]
            u.subtitle = params[:subtitle]
            u.solid_color = params[:solid_color]

            # slab1
            u.slab1_color = params[:slab1_color]
            u.slab1_opacity = params[:slab1_opacity]
            u.slab1_txt_color = params[:slab1_txt_color]
            u.slab1_txt_opacity = params[:slab1_txt_opacity]
            u.slab1_txt_roll_color = params[:slab1_txt_roll_color]
            u.slab1_txt_roll_opacity = params[:slab1_txt_roll_opacity]
            u.slab1_txt_sel_color = params[:slab1_txt_sel_color]
            u.slab1_txt_sel_opacity = params[:slab1_txt_sel_opacity]
        end
        @heading.save
        redirect_to headings_path
    end

    def update
        @heading = Heading.find(params[:id])

        @heading.tap do |u|
            u.meta_title = params[:meta_title]
            u.meta_description = params[:meta_description]
            u.heading = params[:heading]
            u.subtitle = params[:subtitle]
            u.solid_color = params[:solid_color]

            # slab1
            u.slab1_color = params[:slab1_color]
            u.slab1_opacity = params[:slab1_opacity]
            u.slab1_txt_color = params[:slab1_txt_color]
            u.slab1_txt_opacity = params[:slab1_txt_opacity]
            u.slab1_txt_roll_color = params[:slab1_txt_roll_color]
            u.slab1_txt_roll_opacity = params[:slab1_txt_roll_opacity]
            u.slab1_txt_sel_color = params[:slab1_txt_sel_color]
            u.slab1_txt_sel_opacity = params[:slab1_txt_sel_opacity]
        end

        if !@heading.save
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
    def heading_params
        params.require(:article).permit(:meta_title, :meta_description)
    end
end
