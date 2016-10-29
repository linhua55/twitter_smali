package com.twitter.library.network.livepipeline;

import android.content.Context;
import com.twitter.internal.android.service.ac;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.api.af;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.library.service.e;
import com.twitter.library.service.t;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
abstract class ag<T extends c> extends af<T> {
    protected abstract String u();

    ag(Context context, String str, Session session, ac<aa> acVar) {
        super(context, str, session, acVar);
    }

    public static ac<aa> a(long j) {
        return new t(500, (int) TimeUnit.SECONDS.toMillis(16), (int) j, 10);
    }

    protected d a() {
        e b = K().a(t()).b(u());
        Map g = g();
        for (String str : g.keySet()) {
            b.b(str, (String) g.get(str));
        }
        g = h();
        for (String str2 : g.keySet()) {
            b.a(str2, (String) g.get(str2));
        }
        return b.a();
    }

    protected RequestMethod t() {
        return RequestMethod.b;
    }

    protected Map<String, String> g() {
        return Collections.emptyMap();
    }

    protected Map<String, String> h() {
        return Collections.emptyMap();
    }

    protected T f() {
        return null;
    }
}
