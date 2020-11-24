require 'pdfkit'

def main_proc
  kit = PDFKit.new('http://google.com')
  file = kit.to_file('tmp/testout_pk.pdf')
end

main_proc

p 'fin.'
