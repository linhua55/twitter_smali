package defpackage;

import com.twitter.library.av.model.a;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;
import com.twitter.model.av.AVMedia;

/* compiled from: Twttr */
/* renamed from: brs */
public class brs implements brn {
    volatile long a;
    volatile long b;
    boolean c;
    boolean d;
    private final AVPlayer e;
    private final AVMedia f;
    private final a g;

    public brs(AVPlayer aVPlayer, AVMedia aVMedia) {
        this(aVPlayer, aVMedia, new a());
    }

    public brs(AVPlayer aVPlayer, AVMedia aVMedia, a aVar) {
        this.e = aVPlayer;
        this.f = aVMedia;
        this.g = aVar;
    }

    public void a(bd bdVar, long j) {
        if (!this.c) {
            if (!this.d) {
                this.d = true;
                this.b = this.g.a(this.f, bdVar);
            }
            if (this.e.T()) {
                this.a += 10;
            }
            if (this.a >= this.b) {
                this.c = true;
                this.e.a("view_threshold");
            }
        }
    }

    public void a() {
        this.a = 0;
        this.c = false;
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
