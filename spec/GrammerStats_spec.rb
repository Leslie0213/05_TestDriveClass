require "GrammerStats"

RSpec.describe GrammarStats do
    
    it "fails when empty string is given" do 
        grammerStats=GrammarStats.new
        expect{grammerStats.check("")}.to raise_error "No text found"
    end
     context "when valid string is passed "do

     it "returns false if text starts with lowercase word" do
        grammerStats=GrammarStats.new
        expect(grammerStats.check("ark is a good boy.")).to eq false

     end

     it "returns false if text dosent have correct punctuation (. , ! ,?)" do
        grammerStats=GrammarStats.new
        expect(grammerStats.check("Ark is a good boy")).to eq false

     end

     it "returns true if text has correct punctuation (. , ! ,?) and starts with capital letter" do
        grammerStats=GrammarStats.new
        expect(grammerStats.check("Ark is a good boy.")).to eq true

     end

     describe "percentage_good" do
        it "returns percentage of passed texts so far" do

            grammerStats=GrammarStats.new
            check1= grammerStats.check("Ark is a good boy.")
            check1= grammerStats.check("Ark is a good boy.")
            check1= grammerStats.check("Ark is a good boy")
            check1= grammerStats.check("ark is a good boy.")
            check1= grammerStats.check("ark is a good boy")
            expect(grammerStats.percentage_good).to eq 40

        end
     end

end



end