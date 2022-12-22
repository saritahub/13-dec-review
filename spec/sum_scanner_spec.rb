require 'sum_scanner'

RSpec.describe "Sum Scanner" do 
    context "Expected input" do 
        it 'Expect 1 to return array' do 
            sum_scanner = SumScanner.new 
            expect(sum_scanner.calculate("1")).to eq(["1",1.0])
        end 

        it 'Expect 20.5 to return array' do 
            sum_scanner = SumScanner.new 
            expect(sum_scanner.calculate("20.5")).to eq(["20.5",20.5])
        end 

    end 
end 