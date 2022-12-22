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

        it 'Addition: Expect 1 + 1 to return array with sum' do 
            sum_scanner = SumScanner.new 
            expect(sum_scanner.calculate("1 + 1")).to eq(["1 + 1",2.0])
        end 
     
        it 'Subtraction: Expect 1 - 1 to return array with sum' do 
            sum_scanner = SumScanner.new 
            expect(sum_scanner.calculate("2 - 1")).to eq(["2 - 1",1.0])
        end 

        it 'Divide: Expect 10 / 2 to return array with sum' do 
            sum_scanner = SumScanner.new 
            expect(sum_scanner.calculate("10 / 2")).to eq(["10 / 2",5.0])
        end 

    end 
end 