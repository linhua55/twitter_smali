package com.twitter.library.av.playback;

import android.content.Context;
import com.twitter.library.scribe.TwitterScribeAssociation;
import defpackage.bqk;

/* compiled from: Twttr */
public class ar {
    private bqk a;
    private final ai b;
    private Context c;
    private au d;
    private boolean e;
    private boolean f;
    private TwitterScribeAssociation g;

    public ar(ai aiVar) {
        this.a = bqk.c;
        this.e = true;
        this.f = true;
        this.b = aiVar;
    }

    public ar a(Context context) {
        this.c = context;
        return this;
    }

    public ar a(au auVar) {
        this.d = auVar;
        return this;
    }

    public ar a(TwitterScribeAssociation twitterScribeAssociation) {
        this.g = twitterScribeAssociation;
        return this;
    }

    public ar a(bqk bqk) {
        this.a = bqk;
        return this;
    }

    public ar a(boolean z) {
        this.f = z;
        return this;
    }

    public ar b(boolean z) {
        this.e = z;
        return this;
    }

    public AVPlayerAttachment a() {
        if (this.d == null || this.c == null) {
            throw new IllegalArgumentException("Obtaining an AVPlayer for playback requires  a delegate, event handler and context");
        }
        AVPlayerAttachment a = this.b.a(this.d, this.a, this.c.getApplicationContext(), this.g);
        a.a().c(this.e);
        if (this.f) {
            a.i();
        }
        return a;
    }
}
