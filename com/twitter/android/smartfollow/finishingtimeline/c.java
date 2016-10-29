package com.twitter.android.smartfollow.finishingtimeline;

import android.os.Handler;
import android.os.Looper;
import android.support.annotation.VisibleForTesting;
import com.twitter.config.d;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import java.lang.ref.WeakReference;

@VisibleForTesting
/* compiled from: Twttr */
public class c extends z {
    private final WeakReference<a> a;

    public c(a aVar) {
        this.a = new WeakReference(aVar);
    }

    public void a(x xVar) {
        Runnable dVar = new d(this);
        long a = ((long) d.a("smart_nux_smart_follow_timings_bulk_follow_transaction_duration", 0.0d)) * 1000;
        if (a > 0) {
            new Handler(Looper.getMainLooper()).postDelayed(dVar, a);
        } else {
            dVar.run();
        }
    }
}
