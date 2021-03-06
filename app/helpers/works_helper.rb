module WorksHelper
  def file_icon(content_type)
    case content_type
	  when "application/x-shockwave-flash"
	    image_tag('icons2/Adobe_Flash.png')
	  when "application/postscript"
	    image_tag('icons2/Adobe_Illustrator.png')
	  when "application/pdf"
	    image_tag('icons2/File_Pdf.png')
	  when "application/msword"
	    image_tag('icons2/Word.png')
	  when "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
	    image_tag('icons2/Word.png')
		when "text/php"
	    image_tag('icons2/Adobe_Dreamweaver.png')
    # when "text/html"
    #   image_tag('icons2/Adobe_Dreamweaver.png')
    when "application/octet-stream" # seems to be attached to Word documents that were uploaded to Blackboard
      image_tag('icons2/News.png')
		when /^text/
	    image_tag('icons2/News.png')
		when /^audio/
	    image_tag('icons2/Audio.png')
		when /^video/
	    image_tag('icons2/Video.png')
	  else
	    image_tag('icons2/File.png')
	  end
  end
end