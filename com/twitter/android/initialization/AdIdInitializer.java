package com.twitter.android.initialization;

import android.content.Context;
import com.twitter.android.client.c;
import com.twitter.library.api.d;
import com.twitter.library.client.bg;
import com.twitter.library.client.u;
import defpackage.aof;

/* compiled from: Twttr */
public class AdIdInitializer extends aof<Void> {
    protected int a() {
        return 0;
    }

    protected void a(Context context, Void voidR) {
        u.a.a(d.a(context));
        c.a(context).a(bg.a().c().g(), "app::::launch", true);
    }
}
