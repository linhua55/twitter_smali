package com.twitter.android.commerce.card;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import caw;
import cmb;
import cmc;
import com.twitter.android.revenue.card.au;
import com.twitter.android.revenue.card.j;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.Tweet;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.cai;

/* compiled from: Twttr */
public class a extends au implements bzs {
    protected final int a;
    protected MediaImageView b;
    protected DisplayMode c;
    private final CommerceCardActionHandler d;
    private final ab e;
    private cmb f;
    private TwitterButton g;
    private TextView h;
    private TextView m;
    private TextView n;
    private View o;
    private String p;
    private View q;

    protected a(j jVar) {
        super(jVar);
        this.e = new b(this);
        this.a = 2130968686;
        this.d = new CommerceCardActionHandler(this.l.g(), this.l.i(), this.l.h(), this.l.m());
    }

    public void a(cai cai) {
        super.a(cai);
        bzr.a().a(this.j, this);
    }

    public void a() {
        super.a();
        if (this.b != null) {
            this.b.i();
        }
        bzr.a().b(this.j, this);
    }

    public void b() {
        if (this.b != null) {
            this.b.setFromMemoryOnly(false);
        }
    }

    protected String c() {
        return "image";
    }

    protected String d() {
        return "webview_url";
    }

    public void a(long j, cmb cmb) {
        this.f = cmb;
        this.p = caw.a(d(), this.f);
        this.l.h().a((String) cmb.a("_card_data", String.class));
        a(this.f);
        b(this.f);
        c(this.f);
        d(this.f);
        e(this.f);
        e();
    }

    void a(cmb cmb) {
        if (this.b != null) {
            cmc a = cmc.a(c(), cmb);
            if (a != null) {
                this.b.setAspectRatio(2.0f);
                this.b.a(com.twitter.media.request.a.a(a.a));
                this.b.setFromMemoryOnly(true);
                this.b.setTag("image");
                this.b.setOnTouchListener(this.e);
            }
        }
    }

    void b(cmb cmb) {
        if (this.h != null) {
            CharSequence a = caw.a("title", cmb);
            if (a != null) {
                this.h.setText(a);
                this.h.setTag("title");
                this.h.setOnTouchListener(this.e);
            }
        }
    }

    void c(cmb cmb) {
        if (this.m != null) {
            CharSequence a = caw.a("description", cmb);
            if (a != null) {
                this.m.setText(a);
                this.m.setTag("description");
                this.m.setOnTouchListener(this.e);
            }
        }
    }

    void d(cmb cmb) {
        CharSequence a = caw.a("cta", cmb);
        if (this.g != null && aj.b(a)) {
            this.g.setText(a);
            this.g.setTag("button");
            this.g.setOnTouchListener(new c(this, this.g));
        }
    }

    void e(cmb cmb) {
        CharSequence a = caw.a("badge", cmb);
        if (this.n != null && aj.b(a)) {
            this.n.setText(a);
            this.n.setTag("badge");
            this.n.setOnTouchListener(this.e);
        } else if (this.n != null) {
            this.n.setVisibility(8);
        }
    }

    void e() {
        if (this.o != null) {
            this.o.setOnTouchListener(this.e);
        }
    }

    protected void a(Context context, DisplayMode displayMode) {
        this.i = LayoutInflater.from(context).inflate(2130969072, new FrameLayout(context), false);
        ViewStub viewStub = (ViewStub) this.i.findViewById(2131952841);
        viewStub.setLayoutResource(this.a);
        viewStub.inflate();
        this.q = this.i.findViewById(2131952842);
        this.e.a(this.q);
        this.b = (MediaImageView) this.i.findViewById(2131952122);
        if (this.b != null) {
            this.b.setAspectRatio(2.5f);
            this.b.setImageType("card");
        }
        this.g = (TwitterButton) this.i.findViewById(2131952125);
        this.h = (TextView) this.i.findViewById(2131952126);
        this.m = (TextView) this.i.findViewById(2131952127);
        this.n = (TextView) this.i.findViewById(2131952123);
        this.o = this.i.findViewById(2131952124);
        this.c = displayMode;
    }

    protected void a(View view, MotionEvent motionEvent) {
        NativeCardUserAction a = NativeCardUserAction.a(f(), view, motionEvent, 0);
        String a2 = caw.a("webview_url", this.f);
        String a3 = caw.a("webview_title", this.f);
        Tweet d = this.l.d();
        Activity l = this.l.l();
        if (aj.b(a2) && a3 != null && l != null && d != null) {
            this.d.a(a, a2, a3, l, d.H, d.f != null ? d.f.c : null);
        }
    }
}
