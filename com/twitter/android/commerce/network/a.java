package com.twitter.android.commerce.network;

import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bsn;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class a extends z {
    private final WeakReference<b> a;

    public a(b bVar) {
        this.a = new WeakReference(bVar);
    }

    public void a(x xVar) {
        b bVar = (b) this.a.get();
        if (bVar != null && !bVar.isFinishing() && (xVar instanceof bsn)) {
            aa aaVar = (aa) xVar.l().b();
            if (aaVar.b()) {
                bVar.a();
            } else {
                bVar.a(aaVar.c.getBundle("commerce_error_list_bundle"));
            }
        }
    }
}
