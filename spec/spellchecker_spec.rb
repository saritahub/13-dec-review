require 'spellchecker'

RSpec.describe "SpellChecker" do 
    it "Returns an empty string" do 
        spellchecker = SpellChecker.new 
        expect(spellchecker.check("")).to eq("")
    end 
end 