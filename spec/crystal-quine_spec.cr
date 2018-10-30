require "./spec_helper"

describe Crystal::Quine do
  it "should print its own source code" do
    Crystal::Quine.run.should eq File.read("./src/crystal-quine.cr")
  end
end
