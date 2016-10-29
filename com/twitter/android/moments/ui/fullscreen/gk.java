package com.twitter.android.moments.ui.fullscreen;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.widget.FrameLayout;
import bum;
import com.twitter.android.moments.ui.animation.m;
import com.twitter.model.core.Tweet;
import com.twitter.util.z;

/* compiled from: Twttr */
public class gk {
    private Tweet a;
    private final dz b;
    private final z<Tweet> c;
    private final gm d;

    gk(Tweet tweet, dz dzVar, gm gmVar) {
        this.c = new gl(this);
        this.b = dzVar;
        this.d = gmVar;
        dzVar.a().a(this.c);
        a(tweet);
    }

    public static gk a(Context context, FrameLayout frameLayout, Tweet tweet, dz dzVar, bum bum) {
        return new gk(tweet, dzVar, new gm(frameLayout, dzVar, m.a(context), bum));
    }

    @VisibleForTesting
    protected void a(Tweet tweet) {
        this.a = tweet;
        this.d.a(tweet);
    }

    public void a() {
        this.d.a();
        this.b.a().b(this.c);
    }
}
