class Author

  attr_accessor :name, :posts

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end
  
   def songs
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    @posts << post
     post.author = self
    @@post_count += 1
  end

  def add_post_by_title(name)
    post = Post.new(title)
    @posts << post 
    post.author = self
    @@post_count += 1
  end

  def self.song_count
    @@song_count
  end

end