package com.twitter.library.widget.tweet.content;

import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public class o implements h {
    public final Tweet a;
    public final int b;
    public final int c;
    public final TwitterScribeAssociation d;

    public o(Tweet tweet, TwitterScribeAssociation twitterScribeAssociation, int i, int i2) {
        this.a = tweet;
        this.b = i;
        this.c = i2;
        this.d = twitterScribeAssociation;
    }

    public Tweet a() {
        return this.a;
    }

    public TwitterScribeAssociation b() {
        return this.d;
    }
}
