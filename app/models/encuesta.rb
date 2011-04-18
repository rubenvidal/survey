class Encuesta < ActiveRecord::Base
  has_many :preguntas, :dependent => :destroy
  accepts_nested_attributes_for :preguntas
end
