package com.twitter.android.revenue.card;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import caw;
import cly;
import cmb;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.android.card.j;
import com.twitter.android.nativecards.q;
import com.twitter.android.revenue.x;
import com.twitter.library.api.PromotedEvent;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public abstract class k extends q {
    protected final cmb a;
    protected ViewGroup b;
    private final String[] c;
    private final String d;
    private final String e;
    private final String f;
    private final String g;
    private final String h;
    private final String i;
    private final String j;
    private final String k;
    private final ab l;
    private TwitterButton m;
    private TwitterButton n;
    private TextView o;
    private TextView p;
    private TextView z;

    public abstract void k();

    public abstract View p();

    public k(Activity activity, DisplayMode displayMode, f fVar, a aVar, cmb cmb) {
        super(activity, displayMode, fVar, aVar);
        this.a = cmb;
        this.d = caw.a("cta_one", cmb);
        this.e = caw.a("cta_two", cmb);
        if (aj.b(this.e)) {
            this.c = new String[2];
            this.c[0] = this.d;
            this.c[1] = this.e;
        } else {
            this.c = null;
        }
        this.f = caw.a("cta_one_tweet", cmb);
        this.g = caw.a("cta_two_tweet", cmb);
        this.h = caw.a("thank_you_text", cmb);
        this.i = caw.a("thank_you_url", cmb);
        this.j = caw.a("title", cmb);
        this.k = caw.a("card_url", cmb);
        this.r.a(caw.a("_card_data", cmb));
        this.l = new l(this);
        k();
        a(displayMode);
        i();
        h();
        d();
    }

    private void d() {
        this.p = (TextView) this.b.findViewById(2131952853);
        this.p.setText(this.h);
        if (aj.b(this.i)) {
            this.z = (TextView) this.b.findViewById(2131952854);
            this.z.setText(this.i);
            this.z.setOnClickListener(new m(this));
        }
    }

    public void ak_() {
        super.ak_();
        if (ObjectUtils.a(j.b().b(this.y), Integer.valueOf(-1))) {
            j();
            cly cly = new cly();
            cly.a("tweet_send", Boolean.TRUE);
            b(this.y, cly);
        }
    }

    public void a(long j, cly cly) {
        super.a(j, cly);
        if (ObjectUtils.a(Boolean.TRUE, cly.a("tweet_send"))) {
            j();
        }
    }

    void j() {
        g();
    }

    private void g() {
        if (this.o != null) {
            this.o.setVisibility(8);
        }
        this.m.setVisibility(8);
        if (this.n != null) {
            this.n.setVisibility(8);
        }
        this.p.setVisibility(0);
        if (this.z != null) {
            this.z.setVisibility(0);
        }
        this.b.setOnTouchListener(null);
    }

    private void a(DisplayMode displayMode) {
        int i;
        int dimensionPixelSize;
        this.b = (ViewGroup) LayoutInflater.from(this.q).inflate(2130969083, new FrameLayout(this.q), false);
        this.b.setOnTouchListener(this.l);
        ViewStub viewStub = (ViewStub) this.b.findViewById(2131952841);
        viewStub.setLayoutResource(2130969084);
        viewStub.inflate();
        if (x.a(this.q, displayMode)) {
            i = 0;
            dimensionPixelSize = this.b.getResources().getDimensionPixelSize(2131689561);
        } else {
            i = 1;
            dimensionPixelSize = -1;
        }
        ((LinearLayout) this.b.findViewById(2131952121)).setOrientation(i);
        ((FrameLayout) this.b.findViewById(2131952852)).addView(p(), new LayoutParams(dimensionPixelSize, -2));
    }

    private void h() {
        this.o = (TextView) this.b.findViewById(2131951868);
        if (this.o != null) {
            if (aj.b(this.j)) {
                this.o.setText(this.j);
            } else {
                this.o.setVisibility(8);
            }
        }
    }

    private void i() {
        this.m = (TwitterButton) this.b.findViewById(2131952855);
        this.m.setOnTouchListener(new n(this, this.m));
        Resources resources = this.q.getResources();
        this.m.setText(resources.getString(2131362322, new Object[]{this.d}));
        this.m.setTag("cta_one");
        this.n = (TwitterButton) this.b.findViewById(2131952856);
        if (r()) {
            this.n.setText(resources.getString(2131362322, new Object[]{this.e}));
            this.n.setOnTouchListener(new o(this, this.n));
            this.n.setTag("cta_two");
            return;
        }
        this.n.setVisibility(8);
    }

    private boolean r() {
        return aj.b(this.e);
    }

    private void s() {
        if (this.c == null) {
            a(this.f);
        } else {
            t();
        }
    }

    private void t() {
        new Builder(l()).setTitle(2131362323).setItems(this.c, new p(this)).create().show();
    }

    public View e() {
        return this.b;
    }

    private void a(View view, MotionEvent motionEvent) {
        this.r.a(PromotedEvent.o, NativeCardUserAction.a(this.b, view, motionEvent, 0));
        if (view == this.m) {
            a(this.f);
        } else if (view == this.n) {
            a(this.g);
        } else {
            s();
        }
    }

    protected void a(String str) {
        this.s.a(str, this.y, this.w.aa(), this.w.f);
    }
}
