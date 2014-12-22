class Comment
  def initialize(args*)
    @text = args[:text]
    @author = current_user.username
  end
end