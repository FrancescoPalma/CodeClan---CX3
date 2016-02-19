require( 'minitest/autorun' )
require_relative( '../friends' )

class TestFriends < MiniTest::Test

  def setup

    @person1 = {
      name: "Rick",
      age: 12,
      monies: 1,
      friends: ["Jay","Keith","Marc", "Val"],
      favourites: {
        tv_show: "Friends",
        things_to_eat: ["charcuterie"]
      } 
    }
    
    @person2 = {
      name: "Jay",
      age: 15,
      monies: 2,
      friends: ["Keith"],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["soup","bread"]
      } 
    }

    @person3 = {
      name: "Val",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["ratatouille", "stew"]
      } 
    }

    @person4 = {
      name: "Keith",
      age: 18,
      monies: 20,
      friends: ["Rick", "Jay", "Marc"],
      favourites: {
        tv_show: "Pokemon",
        things_to_eat: ["spaghetti"]
      } 
    }

    @person5 = {
      name: "Marc",
      age: 20,
      monies: 100,
      friends: [],
      favourites: {
        tv_show: "Scrubs",
        things_to_eat: ["spinach"]
      } 
    }

    @people = [@person1, @person2, @person3, @person4, @person5]

  end

  def test_fav_tv_show
    result = fav_tv_show(@person5)
    assert_equal( 'Scrubs', result )
  end

  def test_fav_food
    assert_equal(true, fav_food('spinach', @person5))
  end

  def test_new_friend
    assert_equal(["Francesco"], new_friend(@person5, "Francesco"))
  end 

  def test_remove_friend
    assert_equal('Keith', remove_friend(@person2, 'Keith'))
  end

  def test_total_monies
    assert_equal(143, total_monies(@people))
  end

  def test_lend_money
    result = @person5[:monies] + 10
    assert_equal(result, lend_money(@person4, @person5, 10))
  end

  def test_everyone_fav_food
    assert_equal(['charcuterie', 'soup', 'bread', 'ratatouille', 'stew', 'spaghetti', 'spinach'], everyone_fav_food(@people))
  end

  def test_no_friends
    assert_equal([], no_friends(@person5))
  end

end