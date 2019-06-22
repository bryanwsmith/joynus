module PostsHelper
  def preview_image_options
    Ckeditor::Picture.order('id desc').limit(10).map do |image|
      [image.data.name, image.id, {'data-img-src' => image.try(:data).try(:thumb, '100x').try(:url) }]
    end.prepend(['Select', nil, {}])
  end
end
