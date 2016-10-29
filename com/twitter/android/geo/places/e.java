package com.twitter.android.geo.places;

import android.content.Context;
import android.os.Bundle;
import com.twitter.library.api.geo.c;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bg;
import com.twitter.library.service.x;

/* compiled from: Twttr */
public class e implements bb {
    private final Context a;
    private final bg b;
    private final az c;
    private final long d;
    private f e;

    public e(Context context) {
        this.a = context;
        this.b = bg.a();
        this.c = az.a(context);
        this.d = this.b.c().g();
    }

    public void a(String str, f fVar, String str2, String str3, String str4, boolean z) {
        if (this.e == null) {
            this.e = fVar;
            this.c.a(new com.twitter.library.api.geo.e().a(this.a).a(this.b.c()).a(str).a(this.d).b(str2).d(str4).a(z).c(str3).a(), 0, (bb) this);
        }
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        if (this.e != null) {
            this.e.a(((c) xVar).e());
        }
        this.e = null;
    }

    public void a() {
        this.e = null;
    }
}
