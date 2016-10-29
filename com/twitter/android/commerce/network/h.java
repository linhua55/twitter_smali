package com.twitter.android.commerce.network;

import com.twitter.library.commerce.model.am;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.ab;
import defpackage.bto;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class h extends z {
    private final WeakReference<i> a;
    private final boolean b;

    public h(i iVar, boolean z) {
        this.a = new WeakReference(iVar);
        this.b = z;
    }

    public void a(x xVar) {
        i iVar = (i) this.a.get();
        if (iVar != null && !iVar.isFinishing() && (xVar instanceof bto)) {
            aa aaVar = (aa) xVar.l().b();
            if (aaVar.b()) {
                iVar.a(this.b, (am) ab.a(aaVar.c, "profile_bundle", am.a));
                return;
            }
            iVar.b(aaVar.c.getBundle("commerce_error_list_bundle"));
        }
    }
}
