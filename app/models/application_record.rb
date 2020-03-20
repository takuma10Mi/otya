class ApplicationRecord < ActiveRecord::Base
# ActiveRecord::Base を継承したクラスを作成し、さらにそのクラスを継承させる
  self.abstract_class = true
end
