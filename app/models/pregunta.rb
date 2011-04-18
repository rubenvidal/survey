class Pregunta < ActiveRecord::Base
  belongs_to :encuesta
  has_many :respuestas, :dependent => :destroy
  accepts_nested_attributes_for :respuestas, :reject_if => lambda { |a| a[:contenido].blank? }, :allow_destroy => true
end
