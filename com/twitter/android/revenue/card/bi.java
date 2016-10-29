package com.twitter.android.revenue.card;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.TextView;
import caw;
import cmb;
import cmc;
import com.twitter.android.card.a;
import com.twitter.android.card.f;
import com.twitter.android.client.OpenUriHelper;
import com.twitter.android.revenue.w;
import com.twitter.android.revenue.x;
import com.twitter.android.revenue.y;
import com.twitter.config.d;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.library.util.ao;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import com.twitter.util.collection.n;
import java.util.List;

/* compiled from: Twttr */
public class bi extends a {
    private static final List<String> a;
    protected int b;
    protected String c;
    protected String d;
    protected MediaImageView e;
    protected TextView f;
    protected TwitterButton g;
    protected View h;
    protected final ab r;
    protected boolean s;
    protected TextView t;
    protected View u;

    static {
        a = n.b("promo_image");
    }

    bi(Context context, DisplayMode displayMode, f fVar, a aVar) {
        this(context, displayMode, fVar, aVar, 2130969070);
    }

    bi(Context context, DisplayMode displayMode, f fVar, a aVar, int i) {
        super(context, displayMode, fVar, aVar);
        this.r = new bj(this);
        this.b = i;
        a(context);
    }

    protected void a(Context context) {
        this.s = x.a(context, this.p);
        if (this.s) {
            this.b = 2130969110;
        }
        this.q = LayoutInflater.from(context).inflate(2130969083, new FrameLayout(context), false);
        ViewStub viewStub = (ViewStub) this.q.findViewById(2131952841);
        viewStub.setLayoutResource(this.b);
        viewStub.inflate();
        this.u = this.q.findViewById(2131952842);
        this.r.a(this.u);
        this.e = (MediaImageView) this.q.findViewById(2131952122);
        if (this.e != null) {
            this.e.setAspectRatio(2.5f);
            this.e.setImageType("card");
        }
        this.t = (TextView) this.q.findViewById(2131952833);
        this.g = (TwitterButton) this.q.findViewById(2131952125);
        this.f = (TextView) this.q.findViewById(2131952839);
        this.h = this.q.findViewById(2131952124);
    }

    public void a() {
        super.a();
        if (this.e != null) {
            this.e.i();
        }
    }

    public void b() {
        if (this.e != null) {
            this.e.setFromMemoryOnly(false);
        }
    }

    protected boolean h() {
        return false;
    }

    protected List<String> d() {
        return a;
    }

    protected String g() {
        return "website_url";
    }

    protected float a(cmc cmc) {
        if (this.s) {
            return cmc.a(2.0f);
        }
        if (cmc.a(2.5f) < 2.5f) {
            return 2.0f;
        }
        return 2.5f;
    }

    public void a(long j, cmb cmb) {
        this.c = caw.a(g(), cmb);
        this.d = caw.a("website_dest_url", cmb);
        if (this.d == null) {
            this.d = aj.a(this.o);
        }
        if (this.d == null) {
            this.d = ax.a(this.o);
        }
        if (this.d == null && b(this.i)) {
            String a = caw.a("app_url_resolved", cmb);
            if (!TextUtils.isEmpty(a) && OpenUriHelper.b(this.i, Uri.parse(a))) {
                this.d = a;
            }
        }
        this.c_.a(caw.a("_card_data", cmb));
        b(cmb);
        c(cmb);
        d(cmb);
        i();
        a(cmb);
    }

    void a(cmb cmb) {
        if (this.t != null) {
            CharSequence a = caw.a("vanity_url", cmb);
            this.t.setTextSize(0, ao.a);
            if (a == null) {
                this.t.setText(2131364191);
            } else {
                this.t.setText(a);
            }
            this.t.setTag("vanity_url");
            this.t.setOnTouchListener(this.r);
            a(this.t);
        }
    }

    void b(cmb cmb) {
        if (this.e != null) {
            cmc a = cmc.a(d(), cmb);
            if (a != null) {
                this.e.setAspectRatio(a(a));
                this.e.a(com.twitter.media.request.a.a(a.a));
                this.e.setFromMemoryOnly(true);
                this.e.setTag("promo_image");
                this.e.setOnTouchListener(this.r);
            }
        }
    }

    void c(cmb cmb) {
        if (this.f != null) {
            CharSequence a = caw.a("title", cmb);
            if (aj.b(a)) {
                this.f.setText(a);
                this.f.setTag("title");
                this.f.setOnTouchListener(this.r);
                this.f.setTextSize(0, ao.a);
                a(this.f);
                return;
            }
            this.f.setVisibility(8);
        }
    }

    void d(cmb cmb) {
        if (this.g != null) {
            this.g.setVisibility(h() ? 0 : 8);
            this.g.setText(w.a(cmb));
            this.g.setTag("button");
            this.g.setOnTouchListener(new bk(this, this.g));
        }
    }

    private void a(View view, MotionEvent motionEvent) {
        Context context = view.getContext();
        if (aj.a(this.d)) {
            a(view, motionEvent, this.d);
        } else if (y.a(context, this.c, this.d) || (aj.b(this.d) && b(context))) {
            a(view, motionEvent, this.d);
        } else {
            a(view, motionEvent, this.c);
        }
    }

    void i() {
        if (this.h != null) {
            this.h.setOnTouchListener(this.r);
        }
    }

    protected void a(View view) {
        if (this.p == DisplayMode.COMPOSE) {
            int dimension = (int) this.i.getResources().getDimension(2131689726);
            if (view.getLayoutParams() instanceof MarginLayoutParams) {
                MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
                marginLayoutParams.setMargins(0, 0, dimension, 0);
                view.setLayoutParams(marginLayoutParams);
                view.requestLayout();
            }
        }
    }

    protected void a(View view, MotionEvent motionEvent, String str) {
        this.n.a(str, NativeCardUserAction.a(e(), view, motionEvent, 0));
    }

    private static boolean b(Context context) {
        return com.twitter.library.client.aj.c(context) && d.a("cct_unwrap_card_url");
    }
}
