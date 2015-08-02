class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :slug, type: String 
  field :content, type: String

end
