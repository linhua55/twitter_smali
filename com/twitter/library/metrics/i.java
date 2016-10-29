package com.twitter.library.metrics;

import android.app.Activity;
import android.os.SystemClock;
import com.twitter.app.common.util.h;
import com.twitter.config.d;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.client.az;
import com.twitter.util.telephony.TelephonyUtil;

/* compiled from: Twttr */
public class i implements h {
    private long a;
    private long b;

    public void b(Activity activity) {
        this.b = SystemClock.elapsedRealtime();
    }

    public void a(Activity activity) {
        Object obj = 1;
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.b;
        boolean a = d.a("collect_network_info");
        Object obj2 = SystemClock.elapsedRealtime() - this.a > 3600000 ? 1 : null;
        if (elapsedRealtime <= 30000) {
            obj = null;
        }
        boolean d = TelephonyUtil.i().d();
        if (a && d && obj2 != null && r0 != null) {
            j jVar = new j(activity, elapsedRealtime);
            jVar.b(Integer.MAX_VALUE);
            jVar.a(ExecutionClass.f);
            az.a(activity).a(jVar);
            this.a = SystemClock.elapsedRealtime();
        }
        this.b = 0;
    }
}
