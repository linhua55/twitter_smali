package com.twitter.android.communities;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import defpackage.bfw;
import defpackage.bfx;
import rx.o;

/* compiled from: Twttr */
public class ag implements af {
    private final Context a;
    private final Session b;
    private final az c;

    public ag(Context context, Session session, az azVar) {
        this.a = context;
        this.b = session;
        this.c = azVar;
    }

    public o<bfx> a(long j) {
        bfw bfw = new bfw(this.a, this.b, j, 1);
        this.c.a(bfw, null);
        return bfw.s();
    }
}
