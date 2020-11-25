require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'thinreports', '~> 0.10.3'
end

require 'thinreports'

def main_proc
  report = Thinreports::Report.new(layout: 'tetest_20201124.tlf')

  report.start_new_page do |page|
    page.item(:testtext01).value('あああいいいい')

    page.item(:testimg01).src('assets/150x54.png')
  end

  report.list(:def_tb).add_row do |row|
    row.item(:text1).value('row1-text1')
    row.item(:text2).value('row1-text2')
  end

  report.generate(filename: 'tmp/testout.pdf')
end

main_proc

p 'fin.'
