package com.twitter.android.commerce.network;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bsp;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class c extends z {
    private final WeakReference<d> a;

    public c(d dVar) {
        this.a = new WeakReference(dVar);
    }

    public void a(x xVar) {
        d dVar = (d) this.a.get();
        if (dVar != null && !dVar.isFinishing() && (xVar instanceof bsp)) {
            aa aaVar = (aa) xVar.l().b();
            if (aaVar.b()) {
                dVar.a();
            } else {
                dVar.a(aaVar.c.getBundle("commerce_error_list_bundle"));
            }
        }
    }
}
