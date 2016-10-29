package com.twitter.android.av.video;

import android.view.View.OnClickListener;
import bqk;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.control.h;
import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.util.object.f;

/* compiled from: Twttr */
public class o extends f<n> {
    public AVDataSource a;
    public TwitterScribeAssociation b;
    public bqk c;
    public Mode d;
    public OnClickListener e;
    public a f;
    public h g;

    protected /* synthetic */ Object c() {
        return b();
    }

    public o a(AVDataSource aVDataSource) {
        this.a = aVDataSource;
        return this;
    }

    public o a(TwitterScribeAssociation twitterScribeAssociation) {
        this.b = twitterScribeAssociation;
        return this;
    }

    public o a(bqk bqk) {
        this.c = bqk;
        return this;
    }

    public o a(Mode mode) {
        this.d = mode;
        return this;
    }

    public o a(OnClickListener onClickListener) {
        this.e = onClickListener;
        return this;
    }

    public o a(a aVar) {
        this.f = aVar;
        return this;
    }

    public o a(h hVar) {
        this.g = hVar;
        return this;
    }

    public boolean bo_() {
        return (this.a == null || this.b == null || this.c == null || this.d == null || this.f == null) ? false : true;
    }

    protected n b() {
        return new n(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
    }
}
