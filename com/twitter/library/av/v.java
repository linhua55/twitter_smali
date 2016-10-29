package com.twitter.library.av;

import android.graphics.SurfaceTexture;
import android.view.Surface;
import com.twitter.library.av.playback.AVPlayer;
import com.twitter.util.object.g;
import defpackage.bqu;

/* compiled from: Twttr */
public class v {
    y a;
    z b;
    private final bqu c;
    private final g<x> d;
    private final boolean e;

    public v() {
        this(bqu.a() ? new bqu() : null, new w());
    }

    v(bqu bqu, g<x> gVar) {
        this.c = bqu;
        this.d = gVar;
        this.e = bqu.a();
    }

    public SurfaceTexture a(z zVar) {
        SurfaceTexture surfaceTexture = null;
        if (!(this.a == null || this.b == null)) {
            if (zVar != this.b) {
                this.b.a();
            }
            surfaceTexture = this.a.a;
        }
        if (surfaceTexture != null) {
            this.b = zVar;
        }
        return surfaceTexture;
    }

    public SurfaceTexture a(z zVar, AVPlayer aVPlayer) {
        SurfaceTexture b = this.c != null ? this.c.b() : null;
        if (b != null) {
            y yVar = new y(new Surface(b), b);
            a(yVar, zVar);
            aVPlayer.a(yVar.b);
        }
        return b;
    }

    public void a(y yVar, z zVar) {
        if (!(this.a == null || yVar.a == this.a.a)) {
            if (this.b != zVar) {
                a();
            } else {
                b();
            }
        }
        this.a = yVar;
        this.b = zVar;
    }

    public void a() {
        if (this.b != null) {
            this.b.a();
            b();
        }
        this.b = null;
    }

    void b() {
        if (this.a != null) {
            this.a.a(this.e, (x) this.d.b());
            this.a = null;
        }
        if (this.c != null) {
            this.c.c();
        }
    }
}
