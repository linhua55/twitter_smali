package com.twitter.android.moments.data;

import android.content.Context;
import byi;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bg;
import com.twitter.library.service.b;
import com.twitter.util.collection.x;
import defpackage.bme;

/* compiled from: Twttr */
public class o<R extends b & bme> {
    private final az a;
    private R b;
    private final com.twitter.util.object.b<x<String>, R> c;
    private final int d;

    public static o a(Context context, bg bgVar, byi byi, az azVar, String str) {
        return new o(azVar, 8781, new p(context, bgVar, byi, str));
    }

    public o(az azVar, int i, com.twitter.util.object.b<x<String>, R> bVar) {
        this.a = azVar;
        this.c = bVar;
        this.d = i;
    }

    public void a(bb bbVar) {
        this.b = (b) this.c.a(x.a());
        this.a.a(this.b, this.d, bbVar);
    }

    public void b(bb bbVar) {
        this.b = (b) this.c.a(x.a(((bme) this.b).g()));
        this.a.a(this.b, this.d, bbVar);
    }
}
