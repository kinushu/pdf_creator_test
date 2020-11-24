require 'pdfkit'

PDFKit.configure do |config|
  config.default_options = {
    :encoding=>"utf-8",
    :page_size=>"A4",
    :margin_top=>"0.25in",
    :margin_right=>"0.25in",
    :margin_bottom=>"0.25in",
    :margin_left=>"0.25in",
    :disable_smart_shrinking=>false
  }
end

def main_proc
  kit = PDFKit.new('http://google.com')
  file = kit.to_file('tmp/testout_pk.pdf')
end

main_proc

p 'fin.'
