package com.twitter.library.av.playback;

/* compiled from: Twttr */
class ba implements Runnable {
    final /* synthetic */ boolean a;
    final /* synthetic */ int b;
    final /* synthetic */ int c;
    final /* synthetic */ boolean d;
    final /* synthetic */ ay e;

    ba(ay ayVar, boolean z, int i, int i2, boolean z2) {
        this.e = ayVar;
        this.a = z;
        this.b = i;
        this.c = i2;
        this.d = z2;
    }

    public void run() {
        boolean z = true;
        boolean z2 = this.a;
        AVMediaPlayer c = this.e.a.i != null ? this.e.a.i.c() : AVMediaPlayer.a;
        if (this.e.a.l > 0) {
            if (this.e.a.m) {
                this.e.a.b(true);
            } else {
                c.b((long) ((int) this.e.a.l));
            }
            this.e.a.l = 0;
        } else {
            z = z2;
        }
        this.e.a.a(c);
        if (this.e.a.E() && !this.e.a.y()) {
            this.e.a.b(false);
        }
        super.a(this.b, this.c, this.d, z);
    }
}
