ActiveAdmin.register New do

  index do
  	column :title
  	column :content
    column :created_at
  	column :updated_at
  	translation_status  
  	default_actions
  end

form do |f|
  f.translated_inputs do |t|
    t.input :title
    t.input :content, :as => :ckeditor, :input_html => { :ckeditor => { :height => 400 } }      
  end 
  f.inputs "Attachment", :multipart => true do 
    f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:thumb))
  end
  f.actions
end

end
