package com.twitter.android;

import cgl;
import com.twitter.library.media.widget.TweetMediaView;
import com.twitter.library.media.widget.z;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.media.EditableMedia;

/* compiled from: Twttr */
class uv implements z {
    final /* synthetic */ TweetView a;
    final /* synthetic */ TweetFragment2 b;

    uv(TweetFragment2 tweetFragment2, TweetView tweetView) {
        this.b = tweetFragment2;
        this.a = tweetView;
    }

    public void a(TweetMediaView tweetMediaView, cgl cgl, boolean z) {
        if (z) {
            TweetFragment2.a(this.b, "show", this.a.getTweet());
        }
    }

    public void a(TweetMediaView tweetMediaView, MediaEntity mediaEntity, boolean z) {
        if (z) {
            TweetFragment2.a(this.b, "show", this.a.getTweet());
        }
    }

    public void a(TweetMediaView tweetMediaView, EditableMedia editableMedia, boolean z) {
        if (z) {
            TweetFragment2.a(this.b, "show", this.a.getTweet());
        }
    }
}