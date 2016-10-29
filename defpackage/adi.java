package defpackage;

import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import byn;
import com.twitter.library.scribe.MomentScribeDetails;
import com.twitter.library.scribe.MomentScribeDetails.Engagement;
import com.twitter.library.scribe.MomentScribeDetails.Transition;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.scribe.p;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.j;
import rx.an;
import rx.o;

/* compiled from: Twttr */
/* renamed from: adi */
public class adi implements OnPageChangeListener {
    private final j a;
    private final byn b;
    private final an c;
    private final long d;
    private ab e;
    private int f;
    private int g;

    public adi(long j, ab abVar, o<ab> oVar, j jVar, byn byn, Bundle bundle) {
        this.f = RtlSpacingHelper.UNDEFINED;
        this.g = RtlSpacingHelper.UNDEFINED;
        this.d = j;
        this.a = jVar;
        this.e = abVar;
        this.b = byn;
        if (bundle != null) {
            this.f = bundle.getInt("state_previous_selected_page");
            this.g = bundle.getInt("state_selected_page");
        }
        this.c = oVar.b(new adj(this));
    }

    public void a() {
        a("moments:capsule::capsule_page:impression", (MomentScribeDetails) h().a((Transition) i().q()).q());
    }

    public void b() {
        a(false);
    }

    public void c() {
        a(true);
    }

    void a(String str) {
        a(String.format("moments:capsule:%s:moment:follow", new Object[]{str}), (MomentScribeDetails) h().q());
    }

    void b(String str) {
        a(String.format("moments:capsule:%s:moment:unfollow", new Object[]{str}), (MomentScribeDetails) h().q());
    }

    public void a(int i) {
        a("moments:capsule:::user_action", (MomentScribeDetails) h().a(new Engagement(i)).q());
    }

    public void a(ab abVar) {
        this.b.a(this.e.b).b(new adk(this, abVar));
    }

    @VisibleForTesting
    void d() {
        a("moments:capsule:::open", (MomentScribeDetails) new com.twitter.library.scribe.j().a(this.e.b).q());
    }

    private void a(boolean z) {
        a(z ? "moments:capsule::navigate:forward" : "moments:capsule::navigate:back", (MomentScribeDetails) h().a((Transition) j().q()).q());
    }

    private void a(String str, MomentScribeDetails momentScribeDetails) {
        bbu.a(new TwitterScribeLog(this.d, str).a(TwitterScribeItem.a(momentScribeDetails)));
    }

    private com.twitter.library.scribe.j h() {
        com.twitter.library.scribe.j jVar = new com.twitter.library.scribe.j();
        jVar.a(this.e.b).a(Boolean.valueOf(this.e.k));
        MomentPage c = this.a.c(this.g);
        if (c instanceof com.twitter.model.moments.viewmodels.o) {
            com.twitter.model.moments.viewmodels.o oVar = (com.twitter.model.moments.viewmodels.o) c;
            jVar.b(oVar.m());
            jVar.a(adu.a(oVar, null));
        }
        return jVar;
    }

    private p i() {
        boolean z;
        boolean z2 = true;
        p pVar = new p();
        if (this.g == 0) {
            z = true;
        } else {
            z = false;
        }
        pVar.a(z);
        if (this.g + 1 != this.a.b()) {
            z2 = false;
        }
        pVar.b(z2);
        return pVar;
    }

    private p j() {
        MomentPage c;
        p i = i();
        if (this.f != RtlSpacingHelper.UNDEFINED) {
            c = this.a.c(this.f);
            if (c instanceof com.twitter.model.moments.viewmodels.o) {
                i.a(((com.twitter.model.moments.viewmodels.o) c).m());
            }
        }
        if (this.g >= 0) {
            c = this.a.c(this.g);
            if (c instanceof com.twitter.model.moments.viewmodels.o) {
                i.b(((com.twitter.model.moments.viewmodels.o) c).m());
            }
        }
        return i;
    }

    public adt e() {
        return new adl(this, "start");
    }

    public adt f() {
        return new adl(this, "end");
    }

    public void a(Bundle bundle) {
        bundle.putInt("state_previous_selected_page", this.f);
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
        if (i != this.g) {
            this.f = this.g;
            this.g = i;
            if (i >= 0 && i < this.a.b()) {
                a();
                if (this.f < 0 || this.f == RtlSpacingHelper.UNDEFINED) {
                    d();
                } else if (this.f > this.g) {
                    b();
                } else {
                    c();
                }
            }
        }
    }

    public void onPageScrollStateChanged(int i) {
    }

    public void g() {
        this.c.K_();
    }
}
