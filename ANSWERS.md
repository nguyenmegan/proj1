# Q0: Why is this error being thrown?
We haven't made the Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

Pokemons that don't belong to a trainer are being randomly selected using the index method in the Home controller. All the possible Pokemon that appear don't belong to a trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This line makes a clickable button on the home page that sends a patch request with the capture_path containing the current wild pokemon's id. The patch request will bind the pokemon to the current trainer's id making it theirs.

# Question 3: What would you name your own Pokemon?

Pickles

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

I passed a path trainers/:id into the redirect_to but it needs the id of the trainer we want so that the proper page shows.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

In application.html.erb, at the end of the file it has render 'layout/messages' so that any validations that error will be displayed as sentences.

# Give us feedback on the project and decal below!

I learned a lot! But it took a lot of googling and StackOverflow.

# Extra credit: Link your Heroku deployed app
