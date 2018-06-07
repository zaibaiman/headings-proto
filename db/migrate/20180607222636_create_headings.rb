class CreateHeadings < ActiveRecord::Migration
  def change
    create_table :headings do |t|
      t.string :meta_title
      t.string :meta_description
      t.string :heading
      t.string :subtitle
      t.string :image_url
      t.string :video_url
      t.string :solid_color
      t.string :slab1_color
      t.float :slab1_opacity
      t.string :slab1_txt_color
      t.float :slab1_txt_opacity
      t.string :slab1_txt_roll_color
      t.float :slab1_txt_roll_opacity
      t.string :slab1_txt_sel_color
      t.float :slab1_txt_sel_opacity

      t.string :slab2_color
      t.float :slab2_opacity
      t.string :slab2_txt_color
      t.float :slab2_txt_opacity
      t.string :slab2_txt_roll_color
      t.float :slab2_txt_roll_opacity
      t.string :slab2_txt_sel_color
      t.float :slab2_txt_sel_opacity

      t.timestamps
    end
  end
end
