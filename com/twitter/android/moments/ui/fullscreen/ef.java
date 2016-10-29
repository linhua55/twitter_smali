package com.twitter.android.moments.ui.fullscreen;

import agj;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.LayoutRes;
import com.twitter.android.ProfileActivity;
import com.twitter.app.common.base.u;
import com.twitter.library.client.az;
import com.twitter.library.view.m;
import com.twitter.library.view.o;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.bg;
import com.twitter.model.core.p;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class ef extends dn {
    private final Context a;
    private final az b;
    private final a c;
    private final m d;
    private final agj e;
    private final long f;
    private TwitterUser g;

    public ef(Context context, az azVar, a aVar, long j, agj agj) {
        super(agj);
        this.a = context;
        this.b = azVar;
        this.c = aVar;
        this.f = j;
        this.e = agj;
        this.d = new eg(this);
    }

    public void a(TwitterUser twitterUser) {
        this.g = twitterUser;
        if (!this.e.e()) {
            c();
        }
    }

    public void c() {
        super.c();
        if (this.g != null) {
            this.e.a(true);
            this.e.b(false);
            this.e.a(this.g.d);
            this.e.a(this.g.e);
            this.e.b(this.a.getString(2131364279, new Object[]{this.g.k}));
            this.e.a(this.a.getResources().getColor(2131886309));
            this.e.a((long) this.g.v, (long) this.g.P);
            this.e.c(this.g.n);
            if (aj.b(this.g.g)) {
                this.e.d(true);
                bg bgVar = this.g.D;
                if (bgVar == null || (bgVar.c.c() && bgVar.e.c())) {
                    this.e.c(this.g.g);
                } else {
                    this.e.c(o.a(this.g.g).a(this.g.D).a(this.d).a(-1).a());
                    this.e.a();
                }
            } else {
                this.e.d(false);
            }
            if (aj.b(this.g.q)) {
                this.e.e(true);
                this.e.d(this.g.q);
                this.e.b(-1);
            } else {
                this.e.e(false);
            }
            this.e.a(new eh(this));
            boolean a = p.a(this.g.S);
            this.e.a(a, this.a.getString(a ? 2131364049 : 2131362705));
            this.e.b(new ei(this));
            this.e.c(new ej(this));
            return;
        }
        this.e.a(false);
        this.e.b(true);
    }

    private void a(String str) {
        a(ProfileActivity.a(this.a, 0, str, null, null, -1, null, null));
    }

    private void a(long j) {
        a(ProfileActivity.a(this.a, j, null, null, null, -1, null, null));
    }

    private void a(Intent intent) {
        this.a.startActivity(u.a(intent, true));
    }

    @LayoutRes
    protected int d() {
        return 2130969057;
    }
}
