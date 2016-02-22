require_relative 'anagrams'

describe "#find_anagrams" do
  attr_reader :anagrammer

  before(:each) do
    @anagrammer = Anagrammer.new
  end

  it "can handle an empty string" do
    expect(anagrammer.find_anagrams_of("")).to eql([])
  end

  it "can find the correct anagrams of a word when given a valid word" do
    expect(anagrammer.find_anagrams_of("dog")).to eql(["dog", "cat"])
  end

  it "can find the correct anagrams of a word when given a invalid word" do
    expect(anagrammer.find_anagrams_of("odg")).to eql(["dog", "cat"])
  end
end
