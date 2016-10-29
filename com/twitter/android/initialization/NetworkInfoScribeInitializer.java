package com.twitter.android.initialization;

import android.content.Context;
import com.twitter.app.common.app.a;
import com.twitter.app.common.util.f;
import com.twitter.library.metrics.i;
import com.twitter.library.network.ak;
import defpackage.aof;

/* compiled from: Twttr */
public class NetworkInfoScribeInitializer extends aof<Void> {
    protected int a() {
        return 0;
    }

    protected void a(Context context, Void voidR) {
        f.a().a(new i());
        f.a().a(new ak(a.a().k().b(), a.a().k().a()));
    }
}
