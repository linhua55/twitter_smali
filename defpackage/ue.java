package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import bqk;
import bzr;
import bzs;
import cag;
import cai;
import caw;
import cbc;
import cbd;
import cmb;
import com.twitter.android.av.ae;
import com.twitter.android.av.bd;
import com.twitter.android.av.bk;
import com.twitter.android.av.video.i;
import com.twitter.android.av.video.j;
import com.twitter.android.av.video.k;
import com.twitter.android.av.video.m;
import com.twitter.android.card.b;
import com.twitter.android.card.f;
import com.twitter.android.card.h;
import com.twitter.android.nativecards.CallToAction;
import com.twitter.android.nativecards.q;
import com.twitter.library.av.VideoPlayerView.Mode;
import com.twitter.library.av.playback.TweetAVDataSource;
import com.twitter.library.av.playback.ai;
import com.twitter.library.av.playback.au;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.a;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.media.ui.image.AspectRatioFrameLayout;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.ui.widget.ax;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: ue */
public class ue extends q implements OnClickListener, bzs, cbd, a {
    final View a;
    final AspectRatioFrameLayout b;
    final CallToAction c;
    Long d;
    long e;
    String f;
    String g;
    final ax h;
    k i;
    private final m k;
    private final bk l;
    private final ai m;
    private final bd n;
    private final i o;

    public ue(Activity activity, DisplayMode displayMode) {
        this(activity, displayMode, new h(activity), new b(activity), new j(activity), ai.a(), new bk(), new bd(), new m());
    }

    ue(Activity activity, DisplayMode displayMode, f fVar, com.twitter.android.card.a aVar, j jVar, ai aiVar, bk bkVar, bd bdVar, m mVar) {
        super(activity, displayMode, fVar, aVar);
        this.o = jVar.a(activity);
        this.o.a(this);
        this.a = this.o.c();
        this.h = ax.a((Context) activity);
        this.b = (AspectRatioFrameLayout) this.a.findViewById(2131952493);
        this.b.setAspectRatio(1.7777778f);
        this.c = (CallToAction) LayoutInflater.from(activity).inflate(2130969113, (ViewGroup) this.a, false);
        ((ViewGroup) this.a).addView(this.c);
        this.k = mVar;
        this.m = aiVar;
        this.l = bkVar;
        this.n = bdVar;
    }

    public void a(cai cai) {
        super.a(cai);
        this.e = cai.b;
        j().a(this.e, this);
        this.d = cag.a("site", cai.c);
        if (this.d != null) {
            k().a(this.d.longValue(), this);
        }
        Activity l = l();
        if (this.i == null && l != null && this.w != null) {
            this.i = this.k.a(l, this.b, this.n, this.l, this.m, new ae(), p(), new TweetAVDataSource(this.w), null);
            this.i.a(bqk.c, Mode.a);
        }
    }

    public void a() {
        super.a();
        j().b(this.e, this);
        if (this.d != null) {
            k().b(this.d.longValue(), this);
        }
        this.o.b();
        if (this.i != null) {
            this.i.a();
            this.i = null;
        }
    }

    public void b() {
        this.o.a();
        if (this.i != null) {
            this.i.b();
        }
    }

    public boolean c() {
        return this.i != null && this.i.c();
    }

    public au aR_() {
        return this.i != null ? this.i.aR_() : au.a;
    }

    public void ak_() {
        super.ak_();
        if (this.i != null) {
            this.i.e();
        }
    }

    public au aS_() {
        return this.i != null ? this.i.aS_() : au.a;
    }

    public void a(boolean z) {
        super.a(z);
        if (this.i != null) {
            this.i.a(z);
        }
    }

    public au h() {
        return this.i != null ? this.i.h() : au.a;
    }

    public View i() {
        return this.i != null ? this.i.i() : null;
    }

    public View e() {
        return this.a;
    }

    public void a(long j, TwitterUser twitterUser) {
        this.o.a(twitterUser);
    }

    public void a(long j, Tweet tweet) {
        super.a(j, tweet);
        if (this.c != null) {
            this.c.setTweet(tweet);
        }
    }

    public void a(long j, cmb cmb) {
        this.f = caw.a("app_id", cmb);
        this.g = caw.a("app_name", cmb);
        String a = caw.a("title", cmb);
        String a2 = caw.a("description", cmb);
        this.o.b(a);
        this.o.a(a2);
        if (this.c != null) {
            int i = 8;
            if (aj.b(this.f) && aj.b(this.g)) {
                this.c.setScribeElement(m());
                this.c.setCardActionHandler(this.s);
                this.c.setCardLogger(this.r);
                this.c.a(null, this.f, this.g, null, null);
                i = 0;
            }
            this.c.setVisibility(i);
        }
    }

    private TwitterScribeAssociation p() {
        Object obj = (this.u == null || !"video_timeline".equals(this.u.a())) ? null : 1;
        return obj != null ? this.u : this.t;
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case 2131952489:
                if (this.d != null) {
                    a(this.d.longValue());
                }
            case 2131952493:
                if (this.i != null) {
                    this.i.onClick(view);
                }
            default:
        }
    }

    protected bzr j() {
        return bzr.a();
    }

    protected cbc k() {
        return cbc.a();
    }
}
