class CommentsController < ApplicationController

  def new
  end

  def create
    # POST /repos/:owner/:repo/commits/:sha/comments
    # Input

    # Name  Type  Description
    # body  string  Required. The contents of the comment.
    # path  string  Relative path of the file to comment on.
    # position  number  Line index in the diff to comment on.
    # line  number  Deprecated. Use position parameter instead. Line number in the file to comment on.
    # Example

    # {
    #   "body": "Nice change",
    #   "path": "file1.txt",
    #   "position": 4,
    #   "line": null
    # }

    # need the commit this one came from
    # post to commit.comments_url
    client.post("")

  end

  def destroy
  end
end
