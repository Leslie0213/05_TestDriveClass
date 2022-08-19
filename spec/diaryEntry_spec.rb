require "diaryEntry"

RSpec.describe DiaryEntry do
it " accepts title and contents and returns title" do
    diaryEntry = DiaryEntry.new("Mr", "Ark is a very good boy")
    expect(diaryEntry.title).to eq "Mr"

end

it " accepts title and contents and returns contents" do
    diaryEntry = DiaryEntry.new("Mr", "Ark is a very good boy")
    expect(diaryEntry.contents).to eq "Ark is a very good boy"

end

it " calls count_words and returns word count of  contents" do
    diaryEntry = DiaryEntry.new("Mr", "Ark is a very good boy")
    expect(diaryEntry.count_words).to eq 6
end

it " calls reading_time and returns time rewuired to read contents" do
    diaryEntry = DiaryEntry.new("Mr", "Ark is a very good boy")
    expect(diaryEntry.reading_time(2)).to eq 3
end



end