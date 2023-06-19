3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end 

puts "3 Topics created"

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
         sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu nisl nunc mi ipsum.
             Faucibus ornare suspendisse sed nisi. Feugiat pretium nibh
             ipsum consequat nisl vel pretium. Egestas dui id ornare arcu 
             odio ut sem. Tortor pretium viverra suspendisse potenti nullam. Elit ullamcorper dignissim cras tincidunt
              lobortis feugiat. Enim blandit volutpat maecenas volutpat blandit. Posuere morbi leo urna molestie at elementum. Ultricies
               tristique nulla aliquet enim tortor at auctor urna.
               Laoreet id donec ultrices tincidunt arcu non sodales neque sodales. Pharetra diam sit amet nisl suscipit
                adipiscing bibendum est. Sed nisi lacus sed viverra tellus in hac habitasse.",
        topic_id: Topic.last.id
    )
end

puts "10 blogs created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Ruby on Rails",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu nisl nunc mi ipsum.
            Faucibus ornare suspendisse sed nisi. Feugiat pretium nibh
            ipsum consequat nisl vel pretium.",
        main_image: "https://place-hold.it/600x400",
        thumb_image:  "https://place-hold.it/350x200"
    )
end
1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}",
        subtitle: "Angular",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu nisl nunc mi ipsum.
            Faucibus ornare suspendisse sed nisi. Feugiat pretium nibh
            ipsum consequat nisl vel pretium.",
        main_image: "https://place-hold.it/600x400",
        thumb_image:  "https://place-hold.it/350x200"
    )
end

puts "9 portfolios created"
