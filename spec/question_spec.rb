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

      search = Question.search_database("Germany", ["Best places"])

      expect(search[0]).to eq(question)
    end



    it "should find questions that include ALL the tags" do
      question = Question.create({user_id: 1, title: "What's the best city to live in in southern Germany?",
       body: "My company is moving me to the area and I would like to know where to focus my search."})

      tag1 = Tag.create({name: "Best places"})
      tag2 = Tag.create({name: "Moving"})

      question.tag_ids = [tag1.id, tag2.id]
      p question.tag_ids
      p question.tags


      search = Question.search_database("Germany", ["Best places", "Moving"], true)

      expect(search[0]).to eq(question)
    end

    it "should find questions only if they include ALL the tags" do
      question = Question.create({user_id: 1, title: "What's the best city to live in in southern Germany?",
       body: "My company is moving me to the area and I would like to know where to focus my search."})

      tag1 = Tag.create({name: "Best places"})
      tag2 = Tag.create({name: "Moving"})

      question.tag_ids = [tag1.id, tag2.id]

      search = Question.search_database("Germany", ["Best places", "Moving", "Travel"], true)

      expect(search[0]).to eq(question)
    end
  end

end