package defpackage;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.RectF;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import bzr;
import bzs;
import cag;
import cai;
import caw;
import cbc;
import cbd;
import cmb;
import cmc;
import com.twitter.android.av.audio.g;
import com.twitter.android.card.a;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.nativecards.q;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.config.d;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.au;
import com.twitter.library.av.playback.av;
import com.twitter.library.util.ao;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.av.Partner;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
/* renamed from: ty */
public class ty extends q implements OnClickListener, bzs, cbd {
    private final av A;
    private au C;
    final View a;
    final MediaImageView b;
    final TypefacesTextView c;
    final TypefacesTextView d;
    final TypefacesTextView e;
    final TypefacesTextView f;
    Long g;
    TwitterUser h;
    String i;
    String j;
    String k;
    cmc l;
    Partner m;
    long n;
    String o;
    private final ai p;
    private final Resources z;

    public ty(Activity activity, DisplayMode displayMode) {
        this(activity, displayMode, new h(activity), new b(activity), ai.a());
    }

    ty(Activity activity, DisplayMode displayMode, f fVar, a aVar, ai aiVar) {
        this(activity, displayMode, fVar, aVar, aiVar, LayoutInflater.from(activity).inflate(2130969067, new FrameLayout(activity), false), new av());
    }

    ty(Activity activity, DisplayMode displayMode, f fVar, a aVar, ai aiVar, View view, av avVar) {
        super(activity, displayMode, fVar, aVar);
        this.m = Partner.a;
        this.a = view;
        this.z = activity.getResources();
        this.b = (MediaImageView) this.a.findViewById(2131952522);
        this.b.setOnClickListener(this);
        this.a.setOnClickListener(this);
        this.c = (TypefacesTextView) this.a.findViewById(csa.title);
        this.d = (TypefacesTextView) this.a.findViewById(2131952834);
        this.e = (TypefacesTextView) this.a.findViewById(2131952835);
        this.f = (TypefacesTextView) this.a.findViewById(2131952836);
        this.p = aiVar;
        this.A = avVar;
    }

    public void a(cai cai) {
        super.a(cai);
        this.n = cai.b;
        g().a(this.n, this);
        this.g = cag.a("artist_user", cai.c);
        if (this.g != null) {
            f().a(this.g.longValue(), this);
        }
    }

    public void a() {
        super.a();
        g().b(this.n, this);
        if (this.g != null) {
            f().b(this.g.longValue(), this);
        }
        if (this.b != null) {
            this.b.i();
        }
    }

    public void b() {
        if (this.b != null) {
            this.b.setFromMemoryOnly(false);
        }
    }

    public void a(long j, cmb cmb) {
        this.l = cmc.a("player_image", cmb);
        this.m = new Partner(caw.a("partner", cmb));
        this.k = caw.a("artist_name", cmb);
        this.i = caw.a("title", cmb);
        this.o = caw.a("card_url", cmb);
        this.j = caw.a("source", cmb);
        if (!(this.b == null || this.l == null)) {
            this.b.setAspectRatio(this.l.a(1.0f));
            this.b.a(com.twitter.media.request.a.a(this.l.a));
            this.b.setFromMemoryOnly(true);
        }
        aj_();
    }

    void aj_() {
        if (this.i != null) {
            this.c.setTextSize(0, ao.a);
            this.c.setText(this.i);
            this.c.setVisibility(0);
        } else {
            this.c.setVisibility(8);
        }
        if (this.k != null) {
            this.d.setTextSize(0, ao.a);
            this.d.setText(this.k);
            this.d.setVisibility(0);
        } else {
            this.d.setVisibility(8);
        }
        d();
        if (this.m == null || Partner.a.equals(this.m)) {
            this.f.setVisibility(8);
            return;
        }
        this.f.setTextSize(0, ao.a);
        this.f.setText(this.m.b());
        this.f.setVisibility(0);
    }

    void d() {
        if (this.h != null) {
            this.e.setTextSize(0, ao.a);
            this.e.setText("@" + this.h.k);
            this.e.setVisibility(0);
            if (this.x == DisplayMode.b) {
                this.e.setOnClickListener(this);
                this.e.setBackgroundDrawable(this.z.getDrawable(2130837644));
                this.e.setTextColor(this.z.getColor(2131886420));
                return;
            }
            return;
        }
        this.e.setVisibility(8);
    }

    public View e() {
        return this.a;
    }

    public void a(long j, TwitterUser twitterUser) {
        if (this.g != null && this.g.equals(Long.valueOf(j))) {
            this.h = twitterUser;
            d();
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131952522:
                a(l(), this.b);
            case 2131952835:
                if (this.g != null) {
                    a(this.g.longValue());
                }
            default:
                a(l(), this.b);
        }
    }

    void a(Activity activity, View view) {
        if (!d.a("audio_configurations_audio_player_enabled")) {
            this.v.b(this.o);
        } else if (activity instanceof TwitterFragmentActivity) {
            g R = ((TwitterFragmentActivity) activity).R();
            if (R != null) {
                PointF pointF;
                PointF pointF2;
                RectF a = r.a(activity, view);
                if (a != null) {
                    pointF = new PointF(a.left, a.top);
                } else {
                    pointF = null;
                }
                if (a != null) {
                    pointF2 = new PointF(a.width(), a.height());
                } else {
                    pointF2 = null;
                }
                R.a(h(), pointF, pointF2, this.t);
            }
        }
    }

    cbc f() {
        return cbc.a();
    }

    bzr g() {
        return bzr.a();
    }

    public au h() {
        if (this.C == null) {
            this.C = this.A.a(this.w);
        }
        return this.C;
    }
}
