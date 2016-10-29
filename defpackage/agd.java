package defpackage;

import android.view.LayoutInflater;
import android.view.View;
import com.twitter.android.moments.ui.fullscreen.fx;
import com.twitter.android.moments.viewmodels.f;
import com.twitter.android.util.bd;
import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.i;
import com.twitter.model.core.Tweet;
import com.twitter.model.moments.g;
import com.twitter.model.moments.k;
import com.twitter.model.moments.viewmodels.MomentPage;
import cvq;
import rx.subjects.a;
import rx.t;
import rx.w;

/* compiled from: Twttr */
/* renamed from: agd */
public class agd implements ahj<MomentPage> {
    private final f a;
    private final afy b;
    private final aix c;
    private i<ImageResponse> d;
    private a<agd> e;

    public static agd a(LayoutInflater layoutInflater, f fVar, k kVar, fx fxVar) {
        return agd.a(afy.a(layoutInflater, kVar, fxVar, false), fVar);
    }

    public static agd a(afy afy, f fVar) {
        return new agd(afy, fVar, new aix());
    }

    public agd(afy afy, f fVar, aix aix) {
        this.e = a.q();
        this.b = afy;
        this.a = fVar;
        this.c = aix;
    }

    public void a(i<ImageResponse> iVar) {
        this.d = iVar;
    }

    public void a(MomentPage momentPage, Tweet tweet) {
        t a = this.c.a();
        this.b.c().a(a).a(c()).a(a).c(cvq.a(this)).b().a(this.e);
        this.b.a(this.a.a());
        b(this.b, this.a);
    }

    private cyw<? super ImageResponse, ? extends w<Integer>> c() {
        return new age(this);
    }

    private void b(afy afy, f fVar) {
        g a = k.a(fVar.c(), afy.d());
        if (a != null) {
            afy.a(a.f, a.a());
        } else {
            afy.a(fVar.b(), null);
        }
    }

    public w<View> a() {
        return this.e.g(bd.a()).b();
    }

    public View aO_() {
        return this.b.a();
    }
}
