class Encuesta < ActiveRecord::Base
  attr_accessible :nombre, :preguntas_attributes
  has_many :preguntas, :dependent => :destroy
  accepts_nested_attributes_for :preguntas, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
