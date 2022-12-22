require 'sum_scanner'

RSpec.describe "Sum Scanner" do 
    context "Expected input" do 
        it 'Expect 1 to return array' do 
            sum_scanner = SumScanner.new 
            expect(sum_scanner.calculate("1")).to eq(["1",1.0])
        end 
    end 
end 