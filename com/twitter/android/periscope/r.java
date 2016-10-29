package com.twitter.android.periscope;

import android.content.Context;
import com.google.android.exoplayer.metadata.id3.Id3Frame;
import com.twitter.library.av.playback.bn;
import java.util.List;
import tv.periscope.android.exoplayer.player.g;
import tv.periscope.android.exoplayer.player.j;
import tv.periscope.android.player.b;
import tv.periscope.android.ui.broadcast.l;

/* compiled from: Twttr */
class r extends l implements g, j {
    private final bn b;

    r(Context context, b bVar, bn bnVar) {
        super(bVar, bnVar.p());
        this.b = bnVar;
    }

    public void a() {
        this.b.a((j) this);
        this.b.a((g) this);
    }

    public void b() {
        this.b.a(null);
        this.b.a(null);
    }

    public void a(boolean z, int i) {
        if (this.a != null) {
            this.a.a(z, i);
        }
    }

    public void a(Exception exception) {
        if (this.a != null) {
            this.a.a(exception);
        }
    }

    public void a(int i, int i2, int i3, float f) {
        if (this.a != null) {
            this.a.a(i, i2, i3, f);
        }
    }

    public void c() {
        if (this.a != null) {
            this.a.c();
        }
    }

    public void a(List<Id3Frame> list) {
        if (this.a != null) {
            this.a.a(list);
        }
    }
}
