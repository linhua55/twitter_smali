package com.twitter.android.profiles;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.android.io;
import com.twitter.android.no;
import com.twitter.android.np;
import com.twitter.library.client.Session;
import com.twitter.library.service.x;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cx;
import com.twitter.model.core.p;
import defpackage.bna;
import defpackage.bnb;

/* compiled from: Twttr */
public class u implements np, ap, s {
    private final no a;
    private final ao b;
    private final Session c;
    private final Context d;
    private final t e;

    public u(t tVar, ao aoVar, Session session, Context context, no noVar) {
        this.e = tVar;
        this.b = aoVar;
        this.b.a((ap) this);
        this.c = session;
        this.d = context;
        this.a = noVar;
    }

    public void a(t tVar) {
        c();
    }

    public void a(ao aoVar) {
        c();
    }

    private void c() {
        if (!d()) {
            this.e.ag_();
        } else if (p.c(this.b.d())) {
            this.e.m();
        } else {
            this.e.l();
        }
    }

    private boolean d() {
        TwitterUser a = this.b.a();
        return (io.a() || a == null || p.d(this.b.d()) || !cx.a(a.K) || this.b.b()) ? false : true;
    }

    public void a() {
        this.a.a(new bna(this.d, this.c).a(this.b.e()), 4000, (np) this);
        this.b.b(AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
        this.e.m();
    }

    public void b() {
        this.a.a(new bnb(this.d, this.c).a(this.b.e()), 4001, (np) this);
        this.b.c(AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
        this.e.l();
    }

    public void a(int i, x xVar) {
        if (!xVar.U()) {
            switch (i) {
                case 4000:
                    this.b.c(AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
                    this.e.l();
                case 4001:
                    this.b.b(AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD);
                    this.e.m();
                default:
            }
        }
    }
}
