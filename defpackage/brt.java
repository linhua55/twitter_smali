package defpackage;

import com.twitter.library.av.playback.AVPlayer;
import com.twitter.library.av.playback.AVPlayer$PlayerStartType;
import com.twitter.library.av.playback.bd;
import com.twitter.library.client.az;
import com.twitter.library.vineloops.VineLoopAggregator;
import com.twitter.library.vineloops.c;
import com.twitter.model.av.AVMedia;
import com.twitter.model.av.VineMedia;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: brt */
public class brt implements brn {
    volatile int a;
    final boolean b;
    private final AVMedia c;
    private final VineLoopAggregator d;
    private final c e;
    private boolean f;

    public brt(AVPlayer aVPlayer, AVMedia aVMedia) {
        this(aVMedia, VineLoopAggregator.a(aVPlayer.R()), c.a(aVPlayer.R(), az.a(aVPlayer.R())));
    }

    brt(AVMedia aVMedia, VineLoopAggregator vineLoopAggregator, c cVar) {
        this(aVMedia, aVMedia instanceof VineMedia, vineLoopAggregator, cVar);
    }

    brt(AVMedia aVMedia, boolean z, VineLoopAggregator vineLoopAggregator, c cVar) {
        this.c = aVMedia;
        this.b = z;
        this.d = vineLoopAggregator;
        this.e = cVar;
        this.f = false;
    }

    public void a(bd bdVar, long j) {
    }

    public void a() {
        this.f = false;
    }

    public boolean b() {
        return true;
    }

    public void c() {
        if (this.b) {
            this.a++;
            this.f = true;
        }
    }

    public void d() {
        if (this.b && this.a > 0) {
            Object c = this.c.c();
            if (aj.b(c)) {
                this.d.a(c, this.a);
                this.e.a();
            }
            this.a = 0;
        }
    }

    public void a(AVPlayer$PlayerStartType aVPlayer$PlayerStartType) {
    }

    public void e() {
    }
}
