<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Notifications\NewCommentPosted;

use App\Topic;

use App\Comment;


class CommentController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function store(Topic $topic)
    {
        request()->validate([
            'content' => 'required|min:5'
        ]);

        $comment = new Comment();
        $comment->content = request('content');
        $comment->user_id = auth()->user()->id;

        $topic->comments()->save($comment);

        // Notification envoyée à l'auteur du topic
        $topic->user->notify(new NewCommentPosted(auth()->user(), $topic));

        return redirect()->route('topics.show', $topic);
    }

    public function storeCommentReply(Comment $comment)
    {
        request()->validate([
            'replyComment' => 'required|min:3'
        ]);

        $commentReply = new Comment();
        $commentReply->content = request('replyComment');
        $commentReply->user_id = auth()->user()->id;

        $comment->comments()->save($commentReply);



        return redirect()->back();
    }
}
