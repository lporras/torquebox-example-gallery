ActiveAdmin.register Picture do
  index :as => :grid do |picture|
    content_tag(:h3, check_box_tag("collection_selection[]", picture.id, false, :id => "batch_action_item_#{picture.id}", :class => "collection_selection") + picture.name) +
    link_to(image_tag(picture.image.portrait.url), admin_picture_path(picture))
  end

  show do
    h3 "Name: #{picture.name}"
    div do
      ul do
        li  strong("Thumb:") + img(:src => picture.image.thumb.url)
        li strong("Portrait:") + img(:src => picture.image.portrait.url)
        li strong("Rotated:") + img(:src => picture.image.rotated.url)
      end
    end
  end
end
