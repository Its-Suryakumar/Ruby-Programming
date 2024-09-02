class Post
 attr_reader :title, :content, :comments
 def initialize(title, content)
   @title = title
   @content = content
   @comments = []
   @views = 0
 end
 def create_post(title, content)
   @title = title
   @content = content
   @comments = []
   @views = 0
   "Post '#{title}' created successfully."
 end
 def display_content
   @views += 1
   "#{@title}\n#{@content}\nViews: #{@views}"
 end
 def add_comment(comment)
   @comments << comment
   "Comment added."
 end
 def display_comments
   @comments.empty? ? "No comments yet." : @comments.join("\n")
 end
end
# Example usage:
post = Post.new('My First Post', 'This is the content of my first post.')
puts post.display_content
post.add_comment('Great post!')
post.add_comment('Thanks for sharing.')
puts post.display_comments
puts post.display_content