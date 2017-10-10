require 'faker'

10.times do
  Article.create(
    title: Faker::Name.title,
    content: Faker::Hipster.paragraphs(1)
    )
end
