Stage.destroy_all

# stages
stages = ["Denial", "Anger", "Bargaining", "Depression", "Acceptance"]
stages.each { |stage| Stage.create!(name: stage) }

# apps 
