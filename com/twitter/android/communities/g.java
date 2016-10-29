package com.twitter.android.communities;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import defpackage.bfy;
import defpackage.cho;
import rx.o;
import rx.subjects.a;

/* compiled from: Twttr */
public class g {
    private final az a;
    private final Context b;
    private final Session c;
    private final a<cho> d;

    g(Context context, Session session, az azVar) {
        this.d = a.q();
        this.b = context;
        this.c = session;
        this.a = azVar;
    }

    public o<cho> a() {
        return this.d;
    }

    public void a(long j) {
        bfy bfy = new bfy(this.b, this.c, j);
        this.a.a(bfy, null);
        bfy.b().a(this.d);
    }
}
