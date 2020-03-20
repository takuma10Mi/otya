class ImageUploader < CarrierWave::Uploader::Base
  # リサイズしたり画像形式を変更するのに必要
  include CarrierWave::RMagick

  # 画像を100x100にリサイズする。
  process :resize_to_fill => [100, 100]

  # 保存形式をJPGにする
  process :convert => 'jpg'

  # jpg,jpeg,gif,pngしか受け付けない
  def extension_white_list
    %w(jpg jpeg png)
  end

  # 拡張子が同じでないとPNGをJPGとかにコンバートできないので、ファイル名を変更
  def filename
    super.chomp(File.extname(super)) + '.jpg' if original_filename.present?
  end

end
