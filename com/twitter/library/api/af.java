package com.twitter.library.api;

import android.content.Context;
import com.twitter.internal.android.service.ac;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.client.Session;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.f;
import com.twitter.library.service.k;
import com.twitter.library.service.l;
import com.twitter.library.service.q;
import com.twitter.library.util.aq;
import defpackage.bbu;
import defpackage.bbw;
import java.util.HashMap;
import java.util.Map;

/* compiled from: Twttr */
public abstract class af<T extends c> extends b<T> {
    protected final Map<String, String> a;
    private final k<aa> b;

    public abstract String e();

    protected af(Context context, String str, Session session) {
        this(context, str, new ab(session));
    }

    protected af(Context context, String str, Session session, ac<aa> acVar) {
        super(context, str, new ab(session));
        this.a = new HashMap();
        this.b = new k().a(acVar);
        a((ac) this.b);
    }

    protected af(Context context, String str, ab abVar) {
        super(context, str, abVar);
        this.a = new HashMap();
        this.b = new k().a(new q(1)).a(new l(context));
        a((ac) this.b);
    }

    protected void a(f fVar) {
        if (fVar != null) {
            this.b.a(fVar);
        }
    }

    public void b(com.twitter.internal.android.service.ab<aa> abVar) {
        a((com.twitter.internal.android.service.ab) abVar, true);
    }

    public void a(com.twitter.internal.android.service.ab<aa> abVar) {
        if (!isCancelled()) {
            a((com.twitter.internal.android.service.ab) abVar, false);
        }
    }

    public static void a(Context context, String str, long j, boolean z, com.twitter.internal.android.service.ab<aa> abVar, boolean z2) {
        bbw b = b(context, str, j, z, abVar, z2);
        if (b != null) {
            bbu.a(b);
        }
    }

    private static TwitterScribeLog b(Context context, String str, long j, boolean z, com.twitter.internal.android.service.ab<aa> abVar, boolean z2) {
        if (str == null || abVar == null || abVar.b() == null) {
            return null;
        }
        String str2;
        if (z) {
            str2 = "success";
        } else if (z2) {
            str2 = "retry";
        } else {
            str2 = "failure";
        }
        int size = abVar.a().size() - 1;
        TwitterScribeLog twitterScribeLog = (TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(j).b(str, str2)).a((long) size);
        com.twitter.internal.network.k g = ((aa) abVar.b()).g();
        HttpOperation f = ((aa) abVar.b()).f();
        if (g == null) {
            return twitterScribeLog;
        }
        TwitterScribeLog.a(context, twitterScribeLog, g);
        twitterScribeLog.a(f.i().toString(), g);
        return twitterScribeLog;
    }

    protected void a(String str, String str2) {
        this.a.put(str, str2);
    }

    protected void a(com.twitter.internal.android.service.ab<aa> abVar, boolean z) {
        bbw b = b(this.p, e(), N().c, d(abVar), abVar, z);
        if (b != null) {
            b.i(aq.a(this.a));
            bbu.a(b);
        }
    }

    protected boolean d(com.twitter.internal.android.service.ab<aa> abVar) {
        return ((aa) abVar.b()).b();
    }
}
