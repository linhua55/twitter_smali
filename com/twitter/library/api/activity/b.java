package com.twitter.library.api.activity;

import android.content.Context;
import com.twitter.library.client.Session;
import com.twitter.library.provider.ar;
import com.twitter.library.provider.di;
import com.twitter.library.provider.e;
import com.twitter.library.service.ab;
import com.twitter.library.service.o;

/* compiled from: Twttr */
public class b extends o {
    private final long a;
    private final int b;
    private final boolean c;

    public b(Context context, Session session, long j, boolean z, int i) {
        super(context, b.class.getName(), session);
        this.a = j;
        this.c = z;
        this.b = i;
    }

    protected void a() {
        ab h = h();
        di s = s();
        e t = t();
        if (this.c) {
            s.b(this.b, null, t);
        } else {
            s.a(this.b, this.a, t);
        }
        ar.a(this.h).a(h.e, "unread_interactions", s.d(this.b), t);
        t.a();
    }
}
