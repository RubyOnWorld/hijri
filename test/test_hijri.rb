require 'helper'
require 'hijri'

class TestHijri < MiniTest::Unit::TestCase

  def test_version
    version = Hijri.const_get('VERSION')

    assert(!version.empty?, 'should have a VERSION constant')
  end
  
  def test_hijri_to_string
    date = Hijri::Hijri.new 1433, 9, 18
    assert_equal "1433-09-18", date.to_s
  end
  
  def test_greo_date_to_hijri
    date = Date.new 2012, 8, 6
    assert_equal "1433-09-18", date.to_hijri.to_s
  end
  
  def test_hijri_to_greo
    h = Hijri::Hijri.new 1430, 1, 1
    g = Date.new  2008, 12, 29
    assert_equal(g , h.to_greo)
  end

  # def test_georigean_converter  
  #   (1..12).each do |m|
  #     (1..30).each do |d|
  #       date = "#{d}#{m}2010"
  #       date_converted = Hijri.absolute2gregorian(Hijri.gregorian2absolute(d, m, 2010)).join
  #       assert(date == date_converted, "Faild: #{date} not equal to #{date_converted}")
  #     end
  #   end
  # end
  
end
