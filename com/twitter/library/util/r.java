package com.twitter.library.util;

import android.graphics.drawable.Drawable;
import com.twitter.util.object.g;

/* compiled from: Twttr */
class r implements g<Drawable> {
    final /* synthetic */ int a;
    final /* synthetic */ int b;
    final /* synthetic */ q c;

    r(q qVar, int i, int i2) {
        this.c = qVar;
        this.a = i;
        this.b = i2;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Drawable a() {
        return this.c.a(this.a, this.b);
    }
}
