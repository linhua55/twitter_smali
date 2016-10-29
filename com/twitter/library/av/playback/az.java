package com.twitter.library.av.playback;

import com.twitter.util.math.Size;

/* compiled from: Twttr */
class az implements Runnable {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ ay c;

    az(ay ayVar, int i, int i2) {
        this.c = ayVar;
        this.a = i;
        this.b = i2;
    }

    public void run() {
        this.c.a.f = Size.a(this.a, this.b);
        super.a(this.a, this.b);
    }
}
