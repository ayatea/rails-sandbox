require 'csv'
require 'rexml/document'

class FilesController < ApplicationController
  # 指定パスのCSVファイルを読み込む
  # @return [Array] 読み込んだCSVデータ
  def read_csv
    @results = CSV.read("#{Rails.root}/tmp/files/test_file.csv")
  end

  # 指定パスのXMLファイルを読み込む
  # @return [REXML::Document] 読み込んだXMLデータ
  def read_xml
    xml = REXML::Document.new(File.new("#{Rails.root}/tmp/files/test_file.xml").read)
    @results = xml
  end
end
