require File.expand_path("#{File.dirname(__FILE__)}/test_helper")

class TestApps < MiniTest::Unit::TestCase
  def test_post_appdefns
    tmp_hash = {
      "node_name" => "black1.megam.co",
      "appdefns" => {"timetokill" => "test1", "metered" => "test1", "logging" => "test1", "runtime_exec" => "test"}
    }
    response = megams.post_appdefn(tmp_hash)
    assert_equal(201, response.status)
  end

  def test_get_appdefns_node
    response = megams.get_appdefn("black1.megam.co")
    assert_equal(200, response.status)
  end

  def test_get_appdefns
    response = megams.get_appdefn("asphyxiated1.megam.co","ADF412857952341327872")
    assert_equal(200, response.status)
  end

end
