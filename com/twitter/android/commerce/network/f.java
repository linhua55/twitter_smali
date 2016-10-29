package com.twitter.android.commerce.network;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bsu;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class f extends z {
    private final WeakReference<g> a;

    public f(g gVar) {
        this.a = new WeakReference(gVar);
    }

    public void a(x xVar) {
        g gVar = (g) this.a.get();
        if (gVar != null && !gVar.isFinishing() && (xVar instanceof bsu)) {
            aa aaVar = (aa) xVar.l().b();
            if (aaVar.b()) {
                gVar.a();
            } else {
                gVar.a(aaVar.c.getBundle("commerce_error_list_bundle"));
            }
        }
    }
}
