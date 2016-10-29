package com.twitter.android.profiles;

import android.content.Context;
import android.support.annotation.StringRes;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import com.twitter.android.ads.c;
import com.twitter.android.profilecompletionmodule.aa;
import com.twitter.config.d;
import com.twitter.library.platform.notifications.PushRegistration;
import com.twitter.model.ads.e;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.p;
import com.twitter.ui.widget.TwitterButton;
import defpackage.bus;

/* compiled from: Twttr */
public class y implements OnClickListener {
    private final TwitterButton a;
    private final TwitterButton b;
    private final TwitterButton c;
    private final TwitterButton d;
    private final TwitterButton e;
    private final TwitterButton f;
    private final TwitterButton g;
    private final TwitterButton h;
    private final TwitterButton i;
    private final TwitterButton j;
    private final TwitterButton k;
    private final TwitterButton l;
    private final LinearLayout m;
    private final boolean n;
    private final boolean o;
    private final Context p;
    private final z q;
    private final TwitterUser r;
    private TwitterUser s;
    private boolean t;
    private int u;
    private boolean v;

    public y(Context context, z zVar, LinearLayout linearLayout, TwitterUser twitterUser, boolean z) {
        this(context, zVar, linearLayout, twitterUser, z, PushRegistration.c(context));
    }

    public y(Context context, z zVar, LinearLayout linearLayout, TwitterUser twitterUser, boolean z, boolean z2) {
        this.n = z;
        this.r = twitterUser;
        this.p = context;
        this.q = zVar;
        this.o = z2;
        this.a = (TwitterButton) linearLayout.findViewById(2131953110);
        this.a.setOnClickListener(this);
        this.b = (TwitterButton) linearLayout.findViewById(2131953105);
        this.b.setOnClickListener(this);
        this.c = (TwitterButton) linearLayout.findViewById(2131953106);
        this.c.setOnClickListener(this);
        this.d = (TwitterButton) linearLayout.findViewById(2131953107);
        this.d.setOnClickListener(this);
        this.e = (TwitterButton) linearLayout.findViewById(2131953108);
        this.e.setOnClickListener(this);
        this.f = (TwitterButton) linearLayout.findViewById(2131953103);
        this.f.setOnClickListener(this);
        this.g = (TwitterButton) linearLayout.findViewById(2131953104);
        this.g.setOnClickListener(this);
        this.h = (TwitterButton) linearLayout.findViewById(2131953109);
        this.h.setOnClickListener(this);
        this.i = (TwitterButton) linearLayout.findViewById(2131953100);
        this.i.setOnClickListener(this);
        this.j = (TwitterButton) linearLayout.findViewById(2131953101);
        this.j.setOnClickListener(this);
        this.k = (TwitterButton) linearLayout.findViewById(2131953102);
        this.k.setOnClickListener(this);
        this.l = (TwitterButton) linearLayout.findViewById(2131953099);
        this.l.setOnClickListener(this);
        this.m = linearLayout;
        this.u = this.r != null ? this.r.w : 0;
    }

    public void a(TwitterUser twitterUser) {
        this.s = twitterUser;
    }

    public void a(int i) {
        int i2 = 8;
        if (!this.t) {
            boolean a;
            boolean z;
            int d = d(i);
            this.b.setEnabled(true);
            this.c.setEnabled(true);
            this.f.setEnabled(true);
            if (d > 0) {
                this.b.setVisibility(8);
                this.c.setVisibility(8);
                this.d.setVisibility(8);
                this.e.setVisibility(8);
                this.f.setVisibility(8);
                this.g.setVisibility(8);
                if (d == 2131362705) {
                    this.b.setVisibility(0);
                } else if (d == 2131364049) {
                    this.c.setVisibility(0);
                } else if (d == 2131363238) {
                    this.d.setVisibility(0);
                } else if (d == 2131364047) {
                    this.e.setVisibility(0);
                }
            }
            c(this.u);
            if (this.n) {
                this.b.setVisibility(8);
                this.f.setVisibility(8);
                if (!bus.a().h()) {
                    this.h.setVisibility(0);
                }
            } else {
                a = d.a("legacy_deciders_alerts_activation_enabled");
                if (this.s.p && d != 2131364047 && a && !this.s.m && this.o) {
                    if (p.k(i)) {
                        b();
                    } else {
                        a();
                    }
                }
            }
            a = as.a(this.p, this.s, i, this.n);
            boolean h = p.h(i);
            TwitterButton twitterButton = this.i;
            if (!a || h) {
                d = 8;
            } else {
                d = 0;
            }
            twitterButton.setVisibility(d);
            twitterButton = this.j;
            if (a && h) {
                d = 0;
            } else {
                d = 8;
            }
            twitterButton.setVisibility(d);
            if (this.v || !as.a(this.s, i, this.n)) {
                z = false;
            } else {
                z = true;
            }
            TwitterButton twitterButton2 = this.k;
            if (z) {
                i2 = 0;
            }
            twitterButton2.setVisibility(i2);
            this.m.setVisibility(0);
        }
    }

    @StringRes
    private int d(int i) {
        if (this.n) {
            return 0;
        }
        if (p.a(i)) {
            return 2131364049;
        }
        if (p.d(i)) {
            return 2131364047;
        }
        if (p.j(i)) {
            return 2131363238;
        }
        return 2131362705;
    }

    public void a(e eVar, boolean z) {
        if (this.l != null) {
            this.l.setVisibility(c.a(this.r, this.s, eVar, z) ? 0 : 8);
        }
    }

    public void a() {
        this.g.setVisibility(8);
        this.f.setVisibility(0);
    }

    public void b() {
        this.f.setVisibility(8);
        this.g.setVisibility(0);
    }

    public void c() {
        this.t = true;
        this.m.setVisibility(4);
    }

    public void b(int i) {
        this.t = false;
        a(i);
    }

    public void c(int i) {
        if (this.u != i) {
            this.u = i;
        }
        if (!this.n) {
            this.a.setVisibility(8);
        } else if (!aa.a(true)) {
            this.a.setText(2131362606);
            this.a.setVisibility(0);
        } else if (i == 0) {
            this.a.setVisibility(8);
        } else {
            this.a.setText(2131362653);
            this.a.setVisibility(0);
        }
    }

    public TwitterButton d() {
        return this.l;
    }

    public void onClick(View view) {
        this.q.onButtonBarItemClick(view);
    }

    public void e() {
        this.v = true;
        this.k.setVisibility(8);
    }

    public void f() {
        this.v = false;
    }
}
