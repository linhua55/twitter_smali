package com.twitter.library.av.playback;

import tv.periscope.android.exoplayer.player.t;
import tv.periscope.android.exoplayer.player.v;

/* compiled from: Twttr */
class bo implements t {
    final /* synthetic */ bn a;

    bo(bn bnVar) {
        this.a = bnVar;
    }

    public void a(v vVar) {
        if (this.a.d != null) {
            this.a.d.a(new bp(vVar));
        }
    }

    public void a(double d) {
        if (this.a.d != null) {
            this.a.d.a(d);
        }
    }
}
