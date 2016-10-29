package defpackage;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.moments.ui.maker.navigation.t;
import com.twitter.app.common.inject.m;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.util.collection.MutableList;
import com.twitter.util.object.ObjectUtils;
import java.util.List;
import rx.an;

/* compiled from: Twttr */
/* renamed from: aii */
public class aii implements m {
    private final aka a;
    private final acx b;
    private final amx<MomentPage, aig> c;
    private final aiu d;
    private final t e;
    private an f;
    private Long g;

    aii(aka aka, acx acx, amx<MomentPage, aig> amx_com_twitter_model_moments_viewmodels_MomentPage__aig, aiu aiu, t tVar) {
        this.a = aka;
        this.b = acx;
        this.c = amx_com_twitter_model_moments_viewmodels_MomentPage__aig;
        this.d = aiu;
        this.e = tVar;
        this.a.a(this.c);
    }

    public static aii a(Activity activity, acx acx, ajh ajh, ViewGroup viewGroup, t tVar) {
        amw aik = new aik(LayoutInflater.from(activity), ajh);
        List a = MutableList.a();
        aka a2 = aka.a(activity, viewGroup);
        Object aiu = new aiu(a);
        return new aii(a2, acx, new amx(aiu, aik), aiu, tVar);
    }

    public View aO_() {
        return this.a.aO_();
    }

    public void a(long j) {
        if (!ObjectUtils.a(this.g, Long.valueOf(j))) {
            c();
            this.g = Long.valueOf(j);
            this.f = this.b.a(j).b(new aij(this));
        }
    }

    private void a(a aVar) {
        this.d.a(aVar.d());
        this.c.notifyDataSetChanged();
    }

    public void a() {
        c();
        this.g = null;
    }

    private void c() {
        if (this.f != null) {
            this.f.K_();
            this.f = null;
        }
    }
}
