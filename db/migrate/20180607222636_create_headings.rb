class CreateHeadings < ActiveRecord::Migration
  def change
    create_table :headings do |t|
      t.text :home_url
      t.text :meta_title
      t.text :meta_description
      t.text :heading
      t.text :subtitle
      t.string :image
      t.string :mp4_video
      t.string :webm_video
      t.string :solid_color

      t.string :slab1_color
      t.integer :slab1_opacity
      t.string :slab1_txt_color
      t.integer :slab1_txt_opacity
      t.string :slab1_txt_roll_color
      t.integer :slab1_txt_roll_opacity
      t.string :slab1_txt_sel_color
      t.integer :slab1_txt_sel_opacity

      t.string :slab2_color
      t.integer :slab2_opacity
      t.string :slab2_txt_color
      t.integer :slab2_txt_opacity
      t.string :slab2_txt_roll_color
      t.integer :slab2_txt_roll_opacity
      t.string :slab2_txt_sel_color
      t.integer :slab2_txt_sel_opacity

      t.timestamps
    end
  end
end
