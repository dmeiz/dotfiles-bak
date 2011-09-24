class Me < Thor
  desc 'hello', 'Say hello'
  def hello
    puts 'Hello'
  end

  desc 'new_app NAME', 'Create a new sinatra app'
  def new_app(name)
    system("mkdir #{name}")
    system("rsync -r --exclude .git ~/src/sinatra-template/ #{name}/")
    system("cd #{name} && git init")
    system("ln -fs ~/src/#{name} ~/.pow/#{name}")
  end
end
