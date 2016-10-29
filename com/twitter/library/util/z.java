package com.twitter.library.util;

import android.content.Context;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import defpackage.bex;

/* compiled from: Twttr */
public class z implements ad {
    private final az a;
    private final Context b;
    private final Session c;
    private final UserSettings d;

    public z(Context context, Session session) {
        this.b = context;
        this.c = session;
        this.a = az.a(context);
        this.d = session.j();
    }

    public void a(boolean z) {
        this.d.i = z;
        d();
    }

    public void b(boolean z) {
        this.d.l = z;
        d();
    }

    public boolean a() {
        return this.d.i;
    }

    public boolean b() {
        return this.d.l;
    }

    public void c() {
    }

    private void d() {
        this.a.a(bex.a(this.b, this.c, this.d, false, null), null);
    }
}
