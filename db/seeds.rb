10.times do |x|
	Blog.create!(
		title: "My Blog Post#{x}",
		body: "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"
	)
end

puts "10 blog posts created"

5.times do |x|
	Skill.create!(
		title: "Rails #{x}",
		percent_utilized: 20
		)
end

puts "5 skills created"

9.times do |x|
	Portfolio.create!(
		title: "Portfolio title: #{x}",
		subtitle: "My greate service",
		body: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. ",
		main_image: "https://via.placeholder.com/600x400" ,
		thumb_image: "https://via.placeholder.com/350x200" 

		)
end


puts "9 portfolio items added"