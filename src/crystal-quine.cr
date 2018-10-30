module Crystal::Quine
  VERSION = "0.1.0"
  extend self

  def run
    code = "module Crystal::Quine\n  VERSION = \"0.1.0\"\n  extend self\n\n  def run\n    code = %s\n    code %% code.inspect\n  end\nend\n\nputs Crystal::Quine.run\n"
    code % code.inspect
  end
end

puts Crystal::Quine.run
