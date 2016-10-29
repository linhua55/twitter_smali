package com.twitter.library.view;

import cet;
import com.twitter.library.widget.TweetView;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TweetActionType;
import com.twitter.model.core.ap;
import com.twitter.model.core.b;
import com.twitter.model.core.bp;
import com.twitter.model.core.cr;
import com.twitter.model.core.q;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.media.EditableMedia;
import defpackage.cgl;

/* compiled from: Twttr */
public interface aa {
    void a(cet cet);

    void a(Tweet tweet, long j, TweetView tweetView);

    void a(Tweet tweet, cgl cgl, TweetView tweetView);

    void a(Tweet tweet, TweetView tweetView);

    void a(Tweet tweet, TweetView tweetView, int i);

    void a(Tweet tweet, MediaEntity mediaEntity, TweetView tweetView);

    void a(Tweet tweet, ap apVar);

    void a(Tweet tweet, b bVar);

    void a(Tweet tweet, bp bpVar);

    void a(Tweet tweet, cr crVar);

    void a(Tweet tweet, q qVar);

    void a(Tweet tweet, TwitterPlace twitterPlace, TweetView tweetView);

    void a(Tweet tweet, EditableMedia editableMedia, TweetView tweetView);

    void a(TweetActionType tweetActionType, TweetView tweetView);

    boolean a(Tweet tweet);

    void b(Tweet tweet, TweetView tweetView);

    void b(Tweet tweet, cr crVar);

    void c(Tweet tweet, TweetView tweetView);

    void d(Tweet tweet, TweetView tweetView);
}
