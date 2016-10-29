package defpackage;

import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;

/* compiled from: Twttr */
/* renamed from: bqx */
public class bqx implements brn {
    volatile long a;
    private final AVPlayer b;
    private final String c;
    private final long d;
    private final boolean e;

    bqx(AVPlayer aVPlayer, bqy bqy) {
        this.b = aVPlayer;
        this.e = bqy.a();
        this.d = bqy.c();
        this.c = bqy.b();
    }

    public void a(bd bdVar, long j) {
        if (this.e && j >= 0 && this.a >= 0 && j - this.a >= this.d) {
            this.a = j;
            this.b.a(this.c);
        }
    }

    public void a() {
    }

    public boolean b() {
        return true;
    }

    public void c() {
    }

    public void d() {
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
    }

    public void e() {
    }
}
