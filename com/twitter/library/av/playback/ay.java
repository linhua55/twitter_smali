package com.twitter.library.av.playback;

import android.content.res.Resources;
import android.os.Handler;
import com.twitter.library.av.s;

/* compiled from: Twttr */
public class ay extends cb {
    final AVPlayer a;
    private final Resources e;

    public ay(AVPlayer aVPlayer, Handler handler, Resources resources) {
        super(s.g, handler);
        this.a = aVPlayer;
        this.e = resources;
    }

    public s a() {
        s m = this.a.m();
        return m != null ? m : s.g;
    }

    public void a(int i, int i2) {
        a(new az(this, i, i2));
    }

    public void a(int i, int i2, boolean z, boolean z2) {
        a(new ba(this, z2, i, i2, z));
    }

    public void a(int i, String str) {
        a(new bb(this, str, i));
    }
}
