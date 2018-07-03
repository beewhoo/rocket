require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test


  def test_initialize_with_arguments
    rocket = Rocket.new(name:'test', colour:'blue', flying:true)
    assert_equal('test', rocket.name)
    assert_equal('blue', rocket.colour)
    assert_equal(true, rocket.flying?)

  end

  def test_initialize_without_arguments
    rocket = Rocket.new
    assert_equal(rocket.name.class, String)
    assert(rocket.name.length >= 1)

    assert_equal(rocket.colour.class, String)
    assert(rocket.colour.length >= 1)

    assert_equal(false, rocket.flying?)

  end

  def test_name_update
    rocket = Rocket.new()
    new_name = rocket.name ='test'
    assert_equal('test', new_name)
  end


  def test_colour_update
    rocket = Rocket.new()
    new_colour = rocket.colour ='test'
    assert_equal('test', new_colour)
  end

  def test_lift_off_when_true
    rocket = Rocket.new({flying:false})
    assert_equal(true, rocket.lift_off)
  end

  def test_lift_off_when_false
    rocket = Rocket.new({flying:true})
    assert_equal(false, rocket.lift_off)
  end

  def test_land_when_true
    rocket = Rocket.new({flying:false})
    assert_equal(false, rocket.land)
  end

  def test_land_when_false
    rocket = Rocket.new({flying:true})
    assert_equal(true, rocket.land)
  end

  def test_status_flying
    rocket = Rocket.new({flying:true})
    rocket.name = 'SpaceX'
    assert_equal("Rocket SpaceX is flying through the sky!", rocket.status)
  end

  def test_status_ready_to_fly
    rocket = Rocket.new({flying:false})
    rocket.name = 'SpaceX'
    assert_equal("Rocket SpaceX is ready for lift off!", rocket.status)

  end





end
