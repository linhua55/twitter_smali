package com.twitter.android.dm;

import android.content.Context;
import com.twitter.library.api.dm.requests.k;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;

/* compiled from: Twttr */
public class e {
    public static void a(Context context, long j, g gVar) {
        Session c = bg.a().c();
        az.a(context).a(new k(context, c, new long[]{j}), new f(gVar));
    }
}
