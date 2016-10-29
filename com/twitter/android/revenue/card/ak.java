package com.twitter.android.revenue.card;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RatingBar;
import android.widget.TextView;
import caw;
import cmb;
import cmc;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.card.CardActionHelper$AppStatus;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import defpackage.byy;
import defpackage.caa;

/* compiled from: Twttr */
public class ak extends a {
    MediaImageView a;
    TextView b;
    TextView c;
    TextView d;
    RatingBar e;
    TwitterButton f;
    View g;
    private final ab h;
    private byy r;
    private String s;
    private String t;

    ak(Context context, DisplayMode displayMode, f fVar, a aVar) {
        super(context, displayMode, fVar, aVar);
        this.h = new al(this);
        a(context);
    }

    public void a() {
        super.a();
        if (this.a != null) {
            this.a.i();
        }
    }

    public void b() {
        if (this.a != null) {
            this.a.setFromMemoryOnly(false);
        }
    }

    protected void a(Context context) {
        this.q = LayoutInflater.from(context).inflate(d(), null);
        this.a = (MediaImageView) this.q.findViewById(2131952122);
        if (this.a != null) {
            this.a.setAspectRatio(1.0f);
            this.a.setImageType("card");
        }
        this.b = (TextView) this.q.findViewById(2131952126);
        this.c = (TextView) this.q.findViewById(2131952873);
        this.g = this.q.findViewById(2131952925);
        this.d = (TextView) this.q.findViewById(2131952927);
        this.e = (RatingBar) this.q.findViewById(2131952926);
        this.f = (TwitterButton) this.q.findViewById(2131952125);
        this.q.getViewTreeObserver().addOnGlobalLayoutListener(new am(this));
    }

    int d() {
        return 2130969104;
    }

    public void a(long j, cmb cmb) {
        this.r = byy.a("app_url", "app_url_resolved", cmb);
        this.s = caw.a("app_id", cmb);
        this.t = caw.a("card_url", cmb);
        this.c_.a(caw.a("_card_data", cmb));
        this.c_.a(j);
        this.c_.a(cmb);
        a(cmb);
        b(cmb);
        g();
    }

    void a(cmb cmb) {
        cmc a = cmc.a("thumbnail", cmb);
        if (a != null) {
            this.a.setAspectRatio(a.a(1.0f));
            this.a.a(com.twitter.media.request.a.a(a.a));
            this.a.setFromMemoryOnly(true);
        }
        this.a.setTag("thumbnail");
        this.a.setOnTouchListener(this.h);
    }

    void b(cmb cmb) {
        c(cmb);
        g(cmb);
        d(cmb);
    }

    void c(cmb cmb) {
        this.b.setTypeface(h.c);
        this.b.setText(caw.a("title", cmb));
    }

    void d(cmb cmb) {
        Double a = caa.a("app_star_rating", cmb);
        if (a == null || a.doubleValue() < 3.0d) {
            this.g.setVisibility(8);
            return;
        }
        e(cmb);
        f(cmb);
    }

    void e(cmb cmb) {
        Resources resources = this.i.getResources();
        CharSequence a = caw.a("app_num_ratings", cmb);
        this.d.setTypeface(h.b);
        if (aj.b(a)) {
            this.d.setText(resources.getString(2131362048, new Object[]{a}));
        }
    }

    void f(cmb cmb) {
        Double a = caa.a("app_star_rating", cmb);
        if (a != null) {
            this.e.setRating(a.floatValue());
        }
    }

    void g(cmb cmb) {
        Resources resources = this.i.getResources();
        String a = caw.a("app_price", cmb);
        if (aj.a(a)) {
            a = a(resources.getString(2131361892));
        }
        String string = resources.getString(2131363346);
        CharSequence charSequence = com.twitter.util.ak.f() ? string + " \u2022 " + a : a + " \u2022 " + string;
        this.c.setTypeface(h.b);
        this.c.setText(charSequence);
    }

    void g() {
        this.f.setText(a(this.n.a(this.s)));
        this.f.setTag("button");
        this.f.setOnTouchListener(new an(this, this.f));
    }

    int a(CardActionHelper$AppStatus cardActionHelper$AppStatus) {
        switch (ao.a[cardActionHelper$AppStatus.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return h();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return i();
            default:
                return j();
        }
    }

    int h() {
        return 2131361898;
    }

    int i() {
        return 2131361896;
    }

    int j() {
        return 2131362046;
    }

    void a(View view, MotionEvent motionEvent) {
        this.n.a(this.r, this.s, this.t, NativeCardUserAction.a(e(), view, motionEvent, 0));
    }

    String a(String str) {
        return aj.a(str) ? str : Character.toTitleCase(str.charAt(0)) + str.substring(1).toLowerCase();
    }
}
