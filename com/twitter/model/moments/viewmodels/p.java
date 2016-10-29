package com.twitter.model.moments.viewmodels;

import com.twitter.model.core.Tweet;
import com.twitter.model.moments.u;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class p<T extends o, B extends p<T, B>> extends g<T, B> {
    Tweet g;
    u h;
    long i;

    protected p() {
    }

    public B a(Tweet tweet, long j) {
        if (tweet == null || tweet.H <= 0) {
            a(j);
        } else {
            a(tweet);
        }
        return (p) ObjectUtils.a(this);
    }

    public B a(Tweet tweet) {
        this.g = tweet;
        return (p) ObjectUtils.a(this);
    }

    public B a(long j) {
        this.i = j;
        return (p) ObjectUtils.a(this);
    }

    public B a(u uVar) {
        this.h = uVar;
        return (p) ObjectUtils.a(this);
    }

    protected void X_() {
        super.X_();
        if (this.g != null) {
            this.i = this.g.H;
        }
    }
}
