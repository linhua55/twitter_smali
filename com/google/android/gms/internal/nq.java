package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;

@oi
public class nq extends nh implements tc {
    nq(Context context, pt ptVar, sz szVar, np npVar) {
        super(context, ptVar, szVar, npVar);
    }

    protected void b() {
        if (this.e.e == -2) {
            this.c.l().a((tc) this);
            f();
            b.a("Loading HTML in WebView.");
            this.c.loadDataWithBaseURL(ar.e().a(this.e.b), this.e.c, "text/html", "UTF-8", null);
        }
    }

    protected void f() {
    }
}
