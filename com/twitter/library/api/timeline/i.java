package com.twitter.library.api.timeline;

import android.content.Context;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;

/* compiled from: Twttr */
public abstract class i extends z {
    private final Context a;

    protected abstract void a(long j, boolean z, int i);

    public i(Context context) {
        this.a = context;
    }

    public void a(x xVar) {
        aa aaVar = (aa) xVar.l().b();
        h hVar = (h) xVar;
        long g = hVar.g();
        int h = hVar.h();
        if (aaVar.b()) {
            a(g, false, h);
        } else {
            a(g, true, h);
        }
    }
}
