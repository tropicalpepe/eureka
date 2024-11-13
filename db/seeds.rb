Category.destroy_all
Idea.destroy_all

categories = Category.create([
                               { name: "Business", color: "#FF5733" },
                               { name: "Project", color: "#33FF57" },
                               { name: "Video Game", color: "#3357FF" },
                               { name: "Video Topic", color: "#FF33A1" }
                             ])

Idea.create([
              { title: "E-commerce Platform", description: "A platform for selling handmade crafts.", category: categories[0] },
              { title: "AI-Powered Health App", description: "An app that uses AI to provide health recommendations.", category: categories[1] },
              { title: "Fantasy Adventure Game", description: "A role-playing game set in a mythical world.", category: categories[2] },
              { title: "Top 10 Coding Tips", description: "A video topic on tips for becoming a better programmer.", category: categories[3] },
              { title: "Social Media Analytics Tool", description: "A tool to track and analyze social media metrics for businesses.", category: categories[0] },
              { title: "Smart Home Project", description: "A project to automate home functions using IoT.", category: categories[1] },
              { title: "Horror Game", description: "A survival horror game set in an abandoned mansion.", category: categories[2] },
              { title: "How to Ace Interviews", description: "A video topic focused on interview tips and strategies.", category: categories[3] }
            ])

puts "Seeded #{Category.count} categories and #{Idea.count} ideas."
