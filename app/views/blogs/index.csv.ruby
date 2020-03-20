require 'csv'

CSV.generate do |csv|
  csv << Article.column_names
  Article.pluck(*Article.column_names).each{|data|csv << data}
end