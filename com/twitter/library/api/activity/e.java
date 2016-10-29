package com.twitter.library.api.activity;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.library.api.as;
import com.twitter.library.client.Session;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.b;
import com.twitter.library.service.c;
import com.twitter.library.service.d;
import com.twitter.util.al;

/* compiled from: Twttr */
public class e extends b<as> {
    public static final String a;

    protected /* synthetic */ c f() {
        return b();
    }

    static {
        a = e.class.getName();
    }

    public e(Context context, Session session) {
        this(context, new ab(session));
    }

    public e(Context context, ab abVar) {
        super(context, a, abVar);
    }

    protected d a() {
        return K().a("activity", "about_me", "unread").a("cursor", true).a();
    }

    protected as b() {
        return as.a(50);
    }

    protected void a(HttpOperation httpOperation, aa aaVar, as asVar) {
        if (httpOperation.k()) {
            long longValue = ((Long) asVar.b()).longValue();
            if (longValue <= al.b()) {
                aaVar.c.putLong("act_read_pos", longValue);
            } else {
                aaVar.c.putLong("act_read_pos", 0);
            }
        }
    }
}
