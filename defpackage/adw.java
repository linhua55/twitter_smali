package defpackage;

import android.support.v4.view.ViewPager.OnPageChangeListener;
import byn;
import com.twitter.android.moments.ui.fullscreen.eq;
import com.twitter.library.scribe.MomentScribeDetails;
import com.twitter.library.scribe.MomentScribeDetails.Dismiss;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.scribe.j;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.model.moments.viewmodels.o;

/* compiled from: Twttr */
/* renamed from: adw */
public class adw implements OnPageChangeListener {
    private final long a;
    private final eq b;
    private final byn c;
    private MomentPage d;
    private a e;
    private ab f;
    private int g;

    public adw(long j, eq eqVar, byn byn) {
        this.a = j;
        this.b = eqVar;
        this.c = byn;
    }

    public void onPageScrolled(int i, float f, int i2) {
    }

    public void onPageSelected(int i) {
        this.e = this.b.d(i);
        this.d = this.b.c(i);
        int i2 = this.g;
        this.g = i;
        Object obj = this.g > i2 ? 1 : null;
        if (this.e != null && this.d != null) {
            ab abVar = this.f;
            this.f = this.e.a();
            if (obj != null && abVar != null && abVar.b != this.f.b) {
                a(abVar, this.f);
            }
        }
    }

    private void a(ab abVar, ab abVar2) {
        this.c.a(abVar.b).b(new adx(this, abVar, abVar2));
    }

    public void onPageScrollStateChanged(int i) {
    }

    public void a() {
        a(1);
    }

    public void b() {
        a(2);
    }

    private void a(int i) {
        if (this.d != null && this.d.f() != null) {
            bbu.a(new TwitterScribeLog(this.a, "moments:capsule:::close").a(TwitterScribeItem.a(adw.a(this.d.f().longValue(), this.e, this.d, i))));
        }
    }

    private static MomentScribeDetails a(long j, a aVar, MomentPage momentPage, int i) {
        j a = new j().a(j).a(new Dismiss(i));
        if (momentPage instanceof o) {
            a.b(((o) momentPage).m());
        }
        a.a(adu.a(momentPage, aVar));
        return (MomentScribeDetails) a.q();
    }
}
