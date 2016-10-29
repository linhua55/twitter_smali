package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.ab;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.util.object.e;
import rx.w;

/* compiled from: Twttr */
/* renamed from: afw */
public class afw implements ahj<MomentPage> {
    private final afv a;

    public static afw a(LayoutInflater layoutInflater, MomentPage momentPage) {
        return new afw(bym.a((ab) e.a(momentPage.e())) ? afv.a(layoutInflater) : afv.b(layoutInflater));
    }

    afw(afv afv) {
        this.a = afv;
    }

    public void a(MomentPage momentPage, Tweet tweet) {
    }

    public w<View> a() {
        return w.a(this.a.a());
    }

    public View aO_() {
        return this.a.a();
    }
}
