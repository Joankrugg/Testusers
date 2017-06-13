class AudioUploader < CarrierWave::Uploader::Base
  include CarrierWave::Audio
    version :mp3 do
    process :convert => [{output_format: :mp3}]

    def full_filename(for_file)
      "#{super.chomp(File.extname(super))}.mp3"
    end
  end
    version :watermarked do
    process :watermark => [{
      output_format: :mp3,
      watermark_file: "#{Rails.root}/db/watermark.mp3"
    }]

    def full_filename(for_file)
      "#{super.chomp(File.extname(super))}.mp3"
    end
  end
end
