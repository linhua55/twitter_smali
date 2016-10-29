package com.twitter.android.revenue.card;

import android.app.Activity;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import android.widget.Toast;
import caw;
import cly;
import cmb;
import cmc;
import com.twitter.android.card.b;
import com.twitter.android.card.h;
import com.twitter.android.nativecards.q;
import com.twitter.library.client.bg;
import com.twitter.library.media.widget.UserImageView;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.request.a;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.aj;
import defpackage.bzb;
import defpackage.bzr;
import defpackage.bzs;
import defpackage.cag;
import defpackage.cai;
import defpackage.cbc;
import defpackage.cbd;

/* compiled from: Twttr */
public abstract class ac extends q implements bzs, cbd, ab {
    private View A;
    private View C;
    private String D;
    private String E;
    private boolean F;
    private String G;
    private boolean H;
    private String I;
    private Long J;
    protected final View a;
    protected final TwitterButton b;
    protected String c;
    protected ab d;
    protected TextView e;
    protected final DisplayMode f;
    private final cly g;
    private aa h;
    private final MediaImageView i;
    private TextView j;
    private TextView k;
    private TextView l;
    private UserImageView m;
    private TextView n;
    private TextView o;
    private TextView p;
    private TextView z;

    protected ac(Activity activity, DisplayMode displayMode) {
        super(activity, displayMode, new h(activity), new b(activity));
        this.g = new cly();
        this.f = displayMode;
        this.a = d();
        if (DisplayMode.FULL == displayMode) {
            ViewStub viewStub = (ViewStub) this.a.findViewById(2131952868);
            if (viewStub != null) {
                viewStub.setLayoutResource(g());
                viewStub.inflate();
            }
        }
        this.i = (MediaImageView) this.a.findViewById(2131952122);
        if (this.i != null) {
            this.i.setAspectRatio(4.0f);
            this.i.setImageType("card");
        }
        this.b = (TwitterButton) this.a.findViewById(DisplayMode.FULL == this.f ? 2131952871 : 2131952125);
        if (displayMode == DisplayMode.FULL) {
            this.e = (TextView) this.a.findViewById(2131952126);
            this.j = (TextView) this.a.findViewById(2131952873);
            this.m = (UserImageView) this.a.findViewById(2131952874);
            if (this.m != null) {
                this.m.setAspectRatio(1.0f);
            }
            this.k = (TextView) this.a.findViewById(2131952872);
            this.l = (TextView) this.a.findViewById(2131952880);
            this.n = (TextView) this.a.findViewById(2131952875);
            this.o = (TextView) this.a.findViewById(2131952876);
            this.p = (TextView) this.a.findViewById(2131952877);
            this.z = (TextView) this.a.findViewById(2131952881);
            this.A = this.a.findViewById(2131952869);
            this.C = this.a.findViewById(2131952878);
        }
        this.d = new ad(this);
        if (this.f == DisplayMode.FORWARD) {
            this.a.setOnTouchListener(this.d);
        }
    }

    protected View d() {
        return LayoutInflater.from(this.q).inflate(h(), null);
    }

    protected int h() {
        return DisplayMode.FORWARD == this.f ? 2130969089 : 2130969090;
    }

    protected int g() {
        return 2130968938;
    }

    public void a(cai cai) {
        super.a(cai);
        bzr.a().a(this.y, this);
        this.J = cag.a("site", cai.c);
        if (this.J != null) {
            cbc.a().a(this.J.longValue(), this);
        }
    }

    public void a() {
        super.a();
        if (this.J != null) {
            cbc.a().b(this.J.longValue(), this);
        }
        if (this.i != null) {
            this.i.i();
        }
        if (this.m != null) {
            this.m.i();
        }
        if (this.h != null) {
            this.h.g();
        }
        bzr.a().b(this.y, this);
    }

    public void b() {
        if (this.i != null) {
            this.i.setFromMemoryOnly(false);
        }
        if (this.m != null) {
            this.m.setFromMemoryOnly(false);
        }
    }

    public View e() {
        return this.a;
    }

    public void a(long j, TwitterUser twitterUser) {
        if (this.f == DisplayMode.FULL && this.j != null) {
            this.I = twitterUser.d;
            Resources resources = this.q.getResources();
            this.j.setVisibility(0);
            this.j.setText(resources.getString(i(), new Object[]{twitterUser.d}));
            this.l.setText(resources.getString(2131362852, new Object[]{twitterUser.d}));
        }
    }

    protected int i() {
        return 2131363768;
    }

    public void a(long j, cmb cmb) {
        this.r.a(caw.a("_card_data", cmb));
        this.c = caw.a("promotion_api_url", cmb);
        this.D = caw.a("promotion_privacy_url", cmb);
        this.E = caw.a("promotion_learn_more_url", cmb);
        this.F = bzb.a("promotion_has_destination_url", cmb, false);
        this.G = caw.a("viewing_user_obfuscated_email_address", cmb);
        if (this.e != null) {
            this.e.setText(caw.a("title", cmb));
            this.e.setTag("title");
        }
        b(cmb);
        a(cmb);
        k();
    }

    public void am_() {
        super.am_();
        a(this.g);
        b(this.y, this.g);
    }

    protected void a(cly cly) {
        cly.a("promotion_lead_submitted", Boolean.valueOf(this.H));
    }

    public void a(long j, cly cly) {
        this.H = bzb.a("promotion_lead_submitted", cly, false);
        k();
    }

    private void k() {
        if (this.H) {
            r();
        } else {
            p();
        }
    }

    private void b(cmb cmb) {
        if (this.i != null) {
            cmc a = cmc.a("promo_image", cmb);
            if (a != null) {
                this.i.setAspectRatio(a.a(4.0f));
                this.i.a(a.a(a.a));
                this.i.setFromMemoryOnly(true);
            }
            this.i.setTag("promo_image");
        }
    }

    protected void a(cmb cmb) {
        if (this.b != null) {
            CharSequence a = caw.a("promotion_cta", cmb);
            if (aj.b(a)) {
                this.b.setText(a);
            } else {
                this.b.setText(2131362847);
            }
            this.b.setTag("button");
            this.b.setOnTouchListener(new ae(this, this.b));
        }
    }

    private void b(View view, MotionEvent motionEvent) {
        if (this.w != null) {
            this.v.a(this.w, NativeCardUserAction.a(e(), view, motionEvent, 0));
        }
    }

    protected void a(View view, MotionEvent motionEvent) {
        this.b.setVisibility(8);
        this.k.setVisibility(0);
        this.h = j();
        this.h.e();
        this.r.c("submit", m(), NativeCardUserAction.a(e(), view, motionEvent, 0));
    }

    protected aa j() {
        return new aa(this.q, this.c, this.w, this);
    }

    private void p() {
        TwitterUser f = bg.a().c().f();
        Resources resources = this.q.getResources();
        if (this.p != null) {
            this.p.setText(resources.getString(2131364166));
            this.p.setOnTouchListener(new af(this));
        }
        if (!(f == null || this.m == null)) {
            this.m.a(f);
            this.m.setFromMemoryOnly(true);
        }
        if (!(f == null || this.n == null)) {
            this.n.setText(f.c());
        }
        if (this.o != null) {
            this.o.setText(this.G);
        }
    }

    private void r() {
        if (this.A != null) {
            this.A.setVisibility(8);
        }
        if (this.C != null) {
            this.C.setVisibility(0);
        }
        Resources resources = this.q.getResources();
        if (this.j != null) {
            this.j.setText(resources.getString(2131362852, new Object[]{this.I}));
            this.j.setVisibility(0);
        }
        if (this.z != null) {
            this.z.setText(resources.getString(2131362857));
            this.z.setTag("title");
            this.z.setOnTouchListener(new ag(this));
        }
    }

    public void a(boolean z, String str) {
        this.H = z;
        k();
        if (z) {
            this.g.a("promotion_lead_submitted", Boolean.valueOf(this.H));
            b(this.y, this.g);
            if (this.F && aj.b(str)) {
                this.v.b(str);
                return;
            }
            return;
        }
        Toast.makeText(this.q, 2131362850, 1).show();
        this.b.setVisibility(0);
        this.k.setVisibility(8);
    }
}
