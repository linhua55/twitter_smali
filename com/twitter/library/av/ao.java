package com.twitter.library.av;

import android.os.Handler;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.model.core.Tweet;

/* compiled from: Twttr */
public abstract class ao<T> {
    protected TwitterScribeAssociation a;
    protected int b;
    protected boolean c;
    protected boolean d;
    protected boolean e;
    protected boolean f;
    protected boolean g;
    protected int h;
    protected Handler i;
    protected AVDataSource j;

    public abstract void a(T t);

    public ao() {
        this.c = false;
        this.d = false;
        this.e = false;
        this.f = false;
        this.g = true;
        this.h = 0;
    }

    public ao a(TwitterScribeAssociation twitterScribeAssociation) {
        this.a = twitterScribeAssociation;
        return this;
    }

    public ao b(boolean z) {
        this.e = z;
        return this;
    }

    public ao c(boolean z) {
        this.d = z;
        return this;
    }

    public ao a(Tweet tweet) {
        this.j = new TweetAVDataSource(tweet);
        return this;
    }

    public ao a(AVDataSource aVDataSource) {
        this.j = aVDataSource;
        return this;
    }

    public ao d(boolean z) {
        this.f = z;
        return this;
    }

    public ao e(boolean z) {
        this.g = z;
        return this;
    }
}
