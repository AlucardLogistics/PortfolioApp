# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "Blog post NO. ${blog}",
    body: "A blog (a truncation of the expression weblog) is a discussion or informational website published on the World Wide Web consisting of discrete, often informal diary-style text entries (posts). Posts are typically displayed in reverse chronological order, so that the most recent post appears first, at the top of the web page. Until 2009, blogs were usually the work of a single individual,[citation needed] occasionally of a small group, and often covered a single subject or topic. In the 2010s, multi-author blogs (MABs) have developed, with posts written by large numbers of authors and sometimes professionally edited. MABs from newspapers, other media outlets, universities, think tanks, advocacy groups, and similar institutions account for an increasing quantity of blog traffic. The rise of Twitter and other microblogging systems helps integrate MABs and single-author blogs into the news media. Blog can also be used as a verb, meaning to maintain or add content to a blog."
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Skill NO. #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My service",
    body: "You may have a personal portfolio website for a number of reasons. If you’re a freelancer, then you’d need one to showcase your work and allow people to contact you. If you’re a student (or unemployed), then you’d need one to show prospective employers how good you are and what you can do, so that they might hire you. If you’re part of a studio, then you might use one to blog about your design life, show people what you’re doing and build your online presence.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200"

  )
end

puts "9 portfolio items created"
