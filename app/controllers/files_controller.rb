require 'csv'

class FilesController < ApplicationController
  # 指定パスのCSVファイルを読み込む
  # @return [Array] 読み込んだCSVデータ
  def read_csv
    @results = CSV.read("#{Rails.root}/tmp/files/test_file.csv")
  end
end
