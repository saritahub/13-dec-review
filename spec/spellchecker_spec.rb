require 'spellchecker'

RSpec.describe "SpellChecker" do 
    it "Returns an empty string" do 
        spellchecker = SpellChecker.new 
        expect(spellchecker.check("")).to eq("")
    end 

    context "Returns correctly spelt word" do 
        it "Returns Hello when the input is Hello" do 
            spellchecker = SpellChecker.new 
            expect(spellchecker.check("Hello")).to eq("Hello")
        end 
    end 
end 