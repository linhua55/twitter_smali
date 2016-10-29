package defpackage;

import android.app.Activity;
import android.content.Context;
import android.support.v7.widget.RecyclerView.Adapter;
import android.view.LayoutInflater;
import android.view.View;
import com.twitter.app.common.inject.m;
import com.twitter.model.moments.viewmodels.MomentPage;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.util.collection.MutableList;
import com.twitter.util.object.ObjectUtils;
import rx.an;

/* compiled from: Twttr */
/* renamed from: aio */
public class aio implements m {
    private final akg a;
    private final acx b;
    private final aiu c;
    private final amx<MomentPage, aim> d;
    private an e;
    private Long f;

    public static aio a(Activity activity, acx acx, ajh ajh) {
        amw aiq = new aiq(LayoutInflater.from(activity), ajh);
        akg a = akg.a((Context) activity);
        aiu aiu = new aiu(MutableList.a());
        amx amx = new amx(aiu, aiq);
        return new aio(acx, a, amx, aiu, new ail(amx, aiu));
    }

    public aio(acx acx, akg akg, amx<MomentPage, aim> amx_com_twitter_model_moments_viewmodels_MomentPage__aim, aiu aiu, ail ail) {
        this.b = acx;
        this.a = akg;
        this.c = aiu;
        this.d = amx_com_twitter_model_moments_viewmodels_MomentPage__aim;
        this.a.a((Adapter) amx_com_twitter_model_moments_viewmodels_MomentPage__aim);
        this.a.a((ake) ail);
    }

    public void a(long j) {
        if (!ObjectUtils.a(this.f, Long.valueOf(j))) {
            c();
            this.f = Long.valueOf(j);
            this.e = this.b.a(j).b(new aip(this));
        }
    }

    private void a(a aVar) {
        this.c.a(aVar.d());
        this.d.notifyDataSetChanged();
    }

    public void a() {
        c();
        this.f = null;
    }

    public View aO_() {
        return this.a.aO_();
    }

    private void c() {
        if (this.e != null) {
            this.e.K_();
            this.e = null;
        }
    }
}
