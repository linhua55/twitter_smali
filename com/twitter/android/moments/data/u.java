package com.twitter.android.moments.data;

import android.content.Context;
import byi;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import defpackage.bmg;
import defpackage.bmi;
import java.util.Collections;

/* compiled from: Twttr */
public class u {
    private final Context a;
    private final bg b;
    private final az c;
    private final byi d;

    public u(Context context, bg bgVar, az azVar, byi byi) {
        this.a = context;
        this.b = bgVar;
        this.c = azVar;
        this.d = byi;
    }

    public void a(long j) {
        this.c.a(new bmg(this.a, this.d, this.b.c(), Collections.singletonList(String.valueOf(j))), 2, null);
    }

    public void b(long j) {
        this.c.a(new bmi(this.a, this.d, this.b.c(), Collections.singletonList(String.valueOf(j))), 2, null);
    }
}
