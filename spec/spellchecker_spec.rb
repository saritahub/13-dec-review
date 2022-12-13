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

    context "Returns incorrectly spelt word wrapped in a tilda" do 
        it "Returns ~ello~ when the input is ello" do 
            spellchecker = SpellChecker.new 
            expect(spellchecker.check("ello")).to eq("~ello~")
        end 

        it "Returns ~thre~ when there is spelt incorrectly" do
            spellchecker = SpellChecker.new 
            expect(spellchecker.check("thre")).to eq("~thre~")
        end 
    end 

    context "Multiple words in sentence" do 
        it "Sentence: Returns Hello ~thre~ when there is spelt incorrectly" do
            spellchecker = SpellChecker.new 
            expect(spellchecker.check("Hello thre")).to eq("Hello ~thre~")
        end 

        it "Sentence: Returns multiple words wrapped in tildas when spelt incorrectly" do
            spellchecker = SpellChecker.new 
            expect(spellchecker.check("Wht tme is it")).to eq("~Wht~ ~tme~ is it")
        end 

        it "Sentence: Returns multiple words wrapped in tildas when spelt incorrectly" do
            spellchecker = SpellChecker.new 
            expect(spellchecker.check("We cannot accmmodate this toay")).to eq("We cannot ~accmmodate~ this ~toay~")
        end 
    end 

    context "It raises an error if the input is not a string" do 
        it "When array is input, it raises an error" do 
            spellchecker = SpellChecker.new 
            expect {spellchecker.check(["Hello"])}.to raise_error "Please enter a string!"
        end 
    end 
end 