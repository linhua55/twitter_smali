package com.twitter.android.initialization;

import android.content.Context;
import com.twitter.app.common.util.f;
import com.twitter.library.metrics.DataUsageObserver;
import com.twitter.library.network.b;
import com.twitter.util.s;
import defpackage.aof;

/* compiled from: Twttr */
public class DataUsageObserverInitializer extends aof<Void> {
    protected int a() {
        return 0;
    }

    protected void a(Context context, Void voidR) {
        DataUsageObserver dataUsageObserver = new DataUsageObserver(context, s.a());
        f.a().a(dataUsageObserver);
        b.a().a(dataUsageObserver);
    }
}
