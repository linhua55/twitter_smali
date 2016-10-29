package com.twitter.android.initialization;

import android.content.Context;
import com.twitter.android.client.i;
import com.twitter.android.hv;
import com.twitter.app.common.util.f;
import com.twitter.library.client.an;
import com.twitter.library.client.bt;
import defpackage.aof;

/* compiled from: Twttr */
public class AppVisibilityTrackerInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        f a = f.a();
        a.a(new i(context));
        a.a(new an());
        a.a(new hv());
        a.a(new bt(context));
    }
}
