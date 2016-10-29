package com.twitter.library.av;

import android.graphics.SurfaceTexture;
import android.view.Surface;

/* compiled from: Twttr */
public class y {
    public final SurfaceTexture a;
    public final Surface b;
    private boolean c;

    public y(Surface surface, SurfaceTexture surfaceTexture) {
        this.b = surface;
        this.a = surfaceTexture;
    }

    public void a(boolean z, x xVar) {
        if (!this.c) {
            this.c = true;
            if (z) {
                xVar.a(this.a, 1999);
            }
            this.b.release();
        }
    }
}
