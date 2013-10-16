require "spec_helper"

describe Question do

  describe "::search_database" do
    it "should find questions without using tags" do
      question = Question.create({user_id: 1, title: "What's the best city to live in in southern Germany?",
         body: "My company is moving me to the area and I would like to know where to focus my search."})

      search = Question.search_database("Germany")

      expect(search[0]).to eq(question)
    end

    it "should find questions that include tags" do
      question = Question.create({user_id: 1, title: "What's the best city to live in in southern Germany?",
       body: "My company is moving me to the area and I would like to know where to focus my search."})

      tag = Tag.create({name: "Best places"})

      question.tag_ids = [tag.id]

      search = Question.search_database("Germany", "Best places")

      expect(search[0]).to eq(question)
    end



    it "should find questions that include ALL the tags"
  end

end