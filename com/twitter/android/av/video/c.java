package com.twitter.android.av.video;

import com.twitter.library.av.playback.AVDataSource;
import com.twitter.library.av.playback.h;

/* compiled from: Twttr */
class c extends a {
    final boolean a;
    private final AVDataSource b;

    c(AVDataSource aVDataSource, boolean z) {
        this.b = aVDataSource;
        this.a = z;
    }

    public float a() {
        return this.a ? h.a(this.b) : this.b.n();
    }
}
