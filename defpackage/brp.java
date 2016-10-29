package defpackage;

import com.twitter.library.av.playback.AVPlayer;

/* compiled from: Twttr */
/* renamed from: brp */
class brp implements brr {
    private final float a;
    private long b;
    private final AVPlayer c;

    brp(AVPlayer aVPlayer, float f) {
        this.a = f;
        this.c = aVPlayer;
    }

    public void a(long j, float f) {
        if (b() && f >= this.a) {
            this.b += j;
        }
    }

    public long a() {
        return this.b;
    }

    private boolean b() {
        return !this.c.S();
    }
}
