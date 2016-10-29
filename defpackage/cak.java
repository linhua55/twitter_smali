package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import android.view.View.MeasureSpec;
import cap;
import cgl;
import cly;
import cmb;
import com.google.android.exoplayer.C;
import com.twitter.config.AppConfig;
import com.twitter.library.client.bg;
import com.twitter.library.client.s;
import com.twitter.library.scribe.TwitterScribeAssociation;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.library.widget.tweet.content.a;
import com.twitter.library.widget.tweet.content.f;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.ak;

/* compiled from: Twttr */
/* renamed from: cak */
public final class cak extends a<cah> {
    final String a;
    final long b;
    final cmb c;
    final bzk d;
    Rect e;
    bzm f;

    protected /* synthetic */ f a(Activity activity) {
        return b(activity);
    }

    public static cak a(Activity activity, Tweet tweet, DisplayMode displayMode, bzk bzk, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2) {
        if (activity == null) {
            return null;
        }
        if (s.class.isAssignableFrom(activity.getClass())) {
            if (tweet == null) {
                return null;
            }
            cgl aa = tweet.aa();
            if (aa == null) {
                return null;
            }
            String b = aa.b();
            long j = tweet.H;
            cmb N = aa.N();
            cax.a().c(tweet.H, tweet);
            bzr.a().c(j, N);
            cly cly = tweet.i;
            if (cly != null) {
                bzv.a(activity, bg.a().c().g()).a(j, cly, null, false);
            }
            cbc a = cbc.a();
            for (String str : aa.d().keySet()) {
                TwitterUser twitterUser = (TwitterUser) aa.d().get(str);
                a.c(twitterUser.c, twitterUser);
            }
            if (cap.b().a(b, displayMode, N)) {
                return new cak(activity, tweet, displayMode, b, j, N, bzk, twitterScribeAssociation, twitterScribeAssociation2);
            }
            return null;
        } else if (!AppConfig.m().p()) {
            return null;
        } else {
            throw new IllegalArgumentException("Not assignable from ActivityListenerRegistry");
        }
    }

    cak(Activity activity, Tweet tweet, DisplayMode displayMode, String str, long j, cmb cmb, bzk bzk, TwitterScribeAssociation twitterScribeAssociation, TwitterScribeAssociation twitterScribeAssociation2) {
        super(activity, tweet, displayMode, twitterScribeAssociation, twitterScribeAssociation2);
        this.a = str;
        this.b = j;
        this.c = cmb;
        this.d = bzk;
    }

    protected Object a() {
        return new cai(this.g.H, this.b, this.c).a("params_extra_scribe_association", this.h).a("params_extra_source_scribe_association", this.i);
    }

    protected cah b(Activity activity) {
        cah cah = null;
        if (this.g.aa() != null) {
            caj a = cap.b().a(this.a, this.m);
            if (a != null) {
                bzp b = this.d == null ? null : a.b(activity, this.m, this.c);
                if (b != null) {
                    cah = this.d.a(b);
                }
                if (cah == null) {
                    cah = a.a(activity, this.m, this.c);
                }
                if (b != null) {
                    this.f = a.c(activity, this.m, this.c);
                    cah.a(b);
                }
            }
        }
        return cah;
    }

    public void bb_() {
        boolean z = this.l;
        cah cah = (cah) this.k;
        super.bb_();
        if (this.d != null && z && cah != null) {
            bzp q = cah.q();
            if (q == null) {
                return;
            }
            if (this.f == null) {
                this.d.a(q, cah);
            } else {
                this.d.a(q, cah, this.f);
            }
        }
    }

    public Rect a(Context context, int i, int i2, int i3, int i4) {
        int i5;
        int a;
        View d = d();
        if (d == null) {
            i5 = i + i3;
            a = this.g.aa().a(ak.b()) + i2;
        } else {
            d.measure(MeasureSpec.makeMeasureSpec(i3, C.ENCODING_PCM_32BIT), 0);
            i5 = d.getMeasuredWidth() + i;
            a = d.getMeasuredHeight() + i2;
        }
        if (this.e == null) {
            this.e = new Rect(i, i2, i5, a);
        } else {
            this.e.set(i, i2, i5, a);
        }
        return this.e;
    }
}
