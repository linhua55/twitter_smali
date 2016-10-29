package com.twitter.android.revenue.card;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.TextView;
import caw;
import cly;
import cmb;
import cmc;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.card.j;
import com.twitter.android.composer.aw;
import com.twitter.android.nativecards.q;
import com.twitter.library.client.bg;
import com.twitter.library.util.ab;
import com.twitter.library.util.ac;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.media.ui.image.RichImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.ProgressLayout;
import com.twitter.ui.widget.TwitterButton;
import defpackage.bcw;
import defpackage.bzb;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.cag;
import defpackage.cai;
import defpackage.cbc;
import defpackage.cbd;

/* compiled from: Twttr */
public class s extends q implements bzs, cbd {
    private cmc A;
    private boolean C;
    private final DisplayMode D;
    protected ViewGroup a;
    protected MediaImageView b;
    protected MediaImageView c;
    protected TextView d;
    protected Long e;
    protected ViewGroup f;
    protected ac g;
    protected ab h;
    protected ab i;
    private final TextView j;
    private final TextView k;
    private TextView l;
    private TextView m;
    private ProgressLayout n;
    private TextView o;
    private TwitterButton p;
    private boolean z;

    s(Activity activity, DisplayMode displayMode) {
        this(activity, displayMode, new h(activity), new b(activity));
    }

    s(Activity activity, DisplayMode displayMode, f fVar, a aVar) {
        super(activity, displayMode, fVar, aVar);
        this.C = false;
        this.D = displayMode;
        View e = e();
        this.c = (MediaImageView) e.findViewById(2131952857);
        this.d = (TextView) e.findViewById(2131952858);
        this.b = (MediaImageView) e.findViewById(2131952860);
        this.b.setAspectRatio(2.5f);
        this.j = (TextView) e.findViewById(2131952861);
        this.k = (TextView) e.findViewById(2131952862);
        d();
    }

    private void d() {
        ViewStub viewStub = (ViewStub) e().findViewById(2131952863);
        viewStub.setLayoutResource(this.D == DisplayMode.FORWARD ? 2130969086 : 2130969087);
        this.f = (ViewGroup) viewStub.inflate();
        this.p = (TwitterButton) this.f.findViewById(2131952125);
        this.o = (TextView) this.f.findViewById(2131952126);
        if (this.D == DisplayMode.FULL) {
            this.l = (TextView) this.f.findViewById(2131952127);
            this.m = (TextView) this.f.findViewById(2131952866);
            this.n = (ProgressLayout) this.f.findViewById(2131952865);
        }
    }

    public View e() {
        if (this.a == null) {
            this.a = (ViewGroup) LayoutInflater.from(this.q).inflate(2130969085, null);
        }
        return this.a;
    }

    public void a(cai cai) {
        super.a(cai);
        this.y = cai.b;
        bzr.a().a(this.y, this);
        this.e = cag.a("site", cai.c);
        if (this.e != null && this.D == DisplayMode.FULL) {
            cbc.a().a(this.e.longValue(), this);
        }
    }

    public void a() {
        super.a();
        if (this.e != null) {
            cbc.a().b(this.e.longValue(), this);
        }
        bzr.a().b(this.y, this);
        this.b.i();
        this.c.i();
    }

    public void b() {
        this.b.setFromMemoryOnly(false);
        this.c.setFromMemoryOnly(false);
    }

    public void ak_() {
        super.ak_();
        Integer b = j.b().b(this.y);
        if (b != null && b.intValue() == -1) {
            cly cly = new cly();
            cly.a("participated", Boolean.valueOf(true));
            b(this.y, cly);
            this.z = true;
            g();
        }
    }

    public void a(long j, cly cly) {
        this.z = bzb.a("participated", cly, false);
        g();
    }

    private void g() {
        if (this.z && this.A != null && this.D == DisplayMode.FULL) {
            this.b.a(com.twitter.media.request.a.a(this.A.a));
            this.b.setFromMemoryOnly(true);
            this.b.setTag("participated_image");
            this.b.setAspectRatio(this.A.a(2.5f));
            this.p.setVisibility(8);
        }
    }

    public void a(long j, cmb cmb) {
        this.C = b(cmb);
        a(cmb);
        c(cmb);
        if (this.D == DisplayMode.FORWARD) {
            d(cmb);
        } else if (this.D == DisplayMode.FULL) {
            e(cmb);
            if (this.z) {
                g();
            }
        }
    }

    private boolean b(cmb cmb) {
        return bzb.a("unlocked", cmb, false);
    }

    private void c(cmb cmb) {
        if (this.D == DisplayMode.FULL && this.C) {
            this.j.setVisibility(0);
            this.k.setVisibility(0);
            this.j.setText(caw.a("share_unlocked_cta_line_1", cmb));
            this.k.setText(caw.a("share_unlocked_cta_line_2", cmb));
            return;
        }
        this.j.setVisibility(8);
        this.k.setVisibility(8);
    }

    private void d(cmb cmb) {
        this.p.setText(caw.a("forward_cta", cmb));
        this.o.setText(caw.a("forward_title", cmb));
        if (this.g == null) {
            this.g = new t(this, this.p);
            this.p.setOnTouchListener(this.g);
        }
    }

    private void e(cmb cmb) {
        this.o.setText(caw.a("footer_title", cmb));
        if (this.C) {
            this.l.setText(caw.a("unlocked_description", cmb));
            this.p.setVisibility(8);
            this.n.setVisibility(8);
            return;
        }
        this.l.setText(caw.a("description", cmb));
        this.n.setVisibility(0);
        String a = caw.a("percentage", cmb);
        this.m.setText(a);
        this.n.setProgress(a(a, cmb));
        this.p.setVisibility(0);
        this.p.setText(caw.a("cta", cmb));
        a = caw.a("compose", cmb);
        if (this.g == null) {
            this.g = new u(this, this.p, a);
        }
        this.p.setOnTouchListener(this.g);
    }

    static int a(String str, cmb cmb) {
        String substring = str.substring(0, str.indexOf(37));
        return Integer.parseInt(substring.substring(substring.lastIndexOf(32) + 1));
    }

    void a(cmb cmb) {
        String str = this.D == DisplayMode.FORWARD ? "forward_image" : this.C ? "player_image" : "photo_image";
        cmc a = cmc.a(str, cmb);
        String a2 = caw.a("player_url", cmb);
        this.A = cmc.a("participated_image", cmb);
        if (a != null) {
            this.b.a(com.twitter.media.request.a.a(a.a));
            this.b.setFromMemoryOnly(true);
            this.b.setTag(str);
            this.b.setAspectRatio(a.a(2.5f));
            if (this.i == null) {
                if (this.D == DisplayMode.FORWARD) {
                    this.i = new v(this);
                } else if (this.C && a2 != null) {
                    ((RichImageView) this.b.findViewById(2131951669)).setOverlayDrawable(bcw.player_overlay);
                    this.i = new w(this, a2);
                }
                this.b.setOnTouchListener(this.i);
            }
        }
    }

    public void a(long j, TwitterUser twitterUser) {
        if (this.h == null) {
            this.h = new x(this, j);
        }
        this.d.setVisibility(0);
        this.d.setText(twitterUser.d);
        this.d.setTag("author_name");
        this.d.setOnTouchListener(this.h);
        this.c.setVisibility(0);
        this.c.a(com.twitter.media.request.a.a(twitterUser.e));
        this.c.setFromMemoryOnly(true);
        this.c.setTag("author_image");
        this.c.setOnTouchListener(this.h);
    }

    private void a(String str) {
        Context l = l();
        if (l != null) {
            j.b().a(this.y);
            l.startActivityForResult(aw.a().a(str, null).b(bg.a().c().e()).c(this.y).a(l), 10001);
        }
    }
}
