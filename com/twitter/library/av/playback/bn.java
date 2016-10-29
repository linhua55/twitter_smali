package com.twitter.library.av.playback;

import android.content.Context;
import android.os.Handler;
import android.view.Surface;
import com.twitter.model.av.AVMedia;
import tv.periscope.android.exoplayer.player.e;
import tv.periscope.android.exoplayer.player.g;
import tv.periscope.android.exoplayer.player.j;
import tv.periscope.android.exoplayer.player.s;

/* compiled from: Twttr */
public class bn extends a {
    private final e b;
    private s n;
    private j o;
    private g p;

    public bn(Handler handler, w wVar, e eVar) {
        super(handler, wVar, eVar.b());
        this.b = eVar;
    }

    public e p() {
        return this.b;
    }

    public void a(j jVar) {
        this.o = jVar;
    }

    public void a(g gVar) {
        this.p = gVar;
    }

    void a(Context context, String str, AVMedia aVMedia) {
        bq bqVar = new bq(this);
        this.b.a(bqVar);
        this.b.a(bqVar);
        this.b.a(bqVar);
        this.b.a(bqVar);
        this.n = new s(new bo(this));
        this.b.c();
    }

    public void onPlayerSeekComplete() {
    }

    public void a(Surface surface) {
        super.a(surface);
        this.b.a(surface);
    }

    public void a(boolean z) {
        super.a(z);
        this.b.e();
    }

    public void I() {
        if (this.n != null) {
            this.n.a();
        }
    }

    public void a(float f) {
        this.b.a(f);
    }
}
