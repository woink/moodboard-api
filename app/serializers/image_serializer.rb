class ImageSerializer < ActiveModel::Serializer
  attributes :id, :title, :img_ref

  # def img_ref
  #   object.uploaded_imgs.blobs.map do |blob|
  #   key: blob.key,
  #   filename: blob.filename,
  #   content_type: blob.content_type,
  #   attachable_sgid: blob.attachable_sgid
  #   end
  # end

  # def img_ref
  #   img_refs = Image.all.with_attached_uploaded_img

  #   render json: img_refs.map { |img| 
  #   img.as_json.merg({ image_url: url_for(img.uploaded_img) })
  # }
  
  def img_ref
    object.uploaded_img.attachment
    # if object.uploaded_img.attached? {
    #   byebug
    # }
    # end
  end
end
