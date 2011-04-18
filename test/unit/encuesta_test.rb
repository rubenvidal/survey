require 'test_helper'

class EncuestaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Encuesta.new.valid?
  end
end
