package com.twitter.android.client;

import android.content.Context;
import com.twitter.library.api.upload.u;
import com.twitter.library.client.Session;
import com.twitter.library.client.av;
import com.twitter.library.client.az;
import com.twitter.library.service.x;
import com.twitter.model.drafts.d;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: Twttr */
public class bv {
    private static final AtomicInteger a;
    private static final HashMap<String, av> b;

    static {
        a = new AtomicInteger();
        b = new HashMap(2);
    }

    public static av a(Session session) {
        av avVar;
        synchronized (b) {
            avVar = (av) b.get(session.c());
        }
        return avVar;
    }

    private static void a(Session session, av avVar, int i) {
        avVar.n = i;
        synchronized (b) {
            b.put(session.c(), avVar);
        }
    }

    private static void b(Session session, int i) {
        String c = session.c();
        synchronized (b) {
            av avVar = (av) b.get(c);
            if (avVar != null && avVar.n == i) {
                b.remove(c);
            }
        }
    }

    public static String a(Context context, Session session, av avVar) {
        z.a(context).a(2131363203, session);
        x xVar = (u) new u(context, session).a(avVar).c(a.incrementAndGet()).h(1);
        a(session, avVar, xVar.a());
        return az.a(context).a(xVar, new bw(context));
    }

    public static String a(Context context, Session session, d dVar) {
        return az.a(context).a(new bx(context, session, dVar));
    }
}
