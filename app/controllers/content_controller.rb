class ContentController < ApplicationController

  IMAGES_PATH = File.join(Rails.root, "public")

  def download
    send_file(File.join(IMAGES_PATH, "history.doc"))
  end


  # def download
  #   file = File.expand_path("#{Rails.root}/public/history.doc")
  #   send_file(file)
  # end

  # def show
  #   public_filename = File.expand_path("#{Rails.root}/public/history.doc")
  #   basename = File.expand_path(File.join(File.dirname(__FILE__), '#{Rails.root}/public/history.doc'))
  #   filename = File.expand_path(File.join(basename, @file.public_filename))
  #   raise if basename !=
  #     File.expand_path(File.join(File.dirname(filename), '#{Rails.root}/public/'))
  #   send_file filename, :disposition => 'inline'
  # end
end
