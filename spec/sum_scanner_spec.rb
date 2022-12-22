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

        it 'Multiply: Expect 5 * 2 to return array with sum' do 
            sum_scanner = SumScanner.new 
            expect(sum_scanner.calculate("5 * 2")).to eq(["5 * 2", 10.0])
        end 

        it 'Multiply float: Expect 5.5 * 2 to return array with sum' do 
            sum_scanner = SumScanner.new 
            expect(sum_scanner.calculate("5.5 * 2")).to eq(["5.5 * 2", 11.0])
        end 

        it 'Add two floats: Expect 3.5 + 2.5 to return array with sum' do 
            sum_scanner = SumScanner.new 
            expect(sum_scanner.calculate("3.5 + 2.5")).to eq(["3.5 + 2.5", 6.0])
        end 
    end 

    context "Negative numbers input" do 
        it 'Includes negative numbers and returns array with sum' do 
            sum_scanner = SumScanner.new 
            expect(sum_scanner.calculate("-2 * 10")).to eq(["-2 * 10", -20.0])
        end 
    end 
end 