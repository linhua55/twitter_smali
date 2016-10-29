package com.twitter.android.people.adapters.viewbinders;

import android.content.Context;
import android.os.Handler;
import android.support.annotation.FractionRes;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.twitter.android.people.adapters.f;
import com.twitter.android.people.adapters.i;
import com.twitter.android.people.adapters.m;
import com.twitter.android.people.adapters.viewbinders.h$com.twitter.android.people.adapters.viewbinders.k;
import com.twitter.android.people.bb;
import com.twitter.android.widget.CarouselRowView;
import com.twitter.android.widget.bq;
import com.twitter.android.widget.j;
import com.twitter.android.yj;
import com.twitter.app.common.util.StateSaver;
import com.twitter.app.common.util.t;
import com.twitter.model.people.aa;
import com.twitter.model.people.am;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
public class q extends h<aa, f, com.twitter.android.people.adapters.q> {
    private final Handler c;
    private final t d;

    public q(Context context, yj yjVar, t tVar, bb bbVar, StateSaver<h<aa, f, com.twitter.android.people.adapters.q>> stateSaver) {
        super(bbVar, new r(context, yjVar), stateSaver);
        this.c = new Handler();
        this.d = tVar;
    }

    public View a(com.twitter.android.people.adapters.q qVar, ViewGroup viewGroup) {
        View a = super.a((m) qVar, viewGroup);
        w wVar = (w) ObjectUtils.a(a.getTag());
        wVar.d.addOnPageChangeListener(new s(this, new t(wVar, this.d)));
        return a;
    }

    protected k a(CarouselRowView carouselRowView, f fVar) {
        return new w(this, carouselRowView, fVar);
    }

    protected j<aa> a(Context context, f fVar) {
        return new bq(context, fVar);
    }

    public void a(View view, com.twitter.android.people.adapters.q qVar) {
        super.a(view, (m) qVar);
        a(((w) ObjectUtils.a(view.getTag())).f);
    }

    private void a(Runnable runnable) {
        this.c.removeCallbacks(runnable);
        this.c.postDelayed(runnable, HlsChunkSource.DEFAULT_MIN_BUFFER_TO_SWITCH_UP_MS);
    }

    protected void a(aa aaVar, com.twitter.android.people.adapters.q qVar, boolean z) {
        am amVar = (am) CollectionUtils.b(aaVar.d);
        if (amVar != null) {
            this.a.a(qVar.b(), qVar, aaVar, amVar, z);
        }
    }

    protected void a(aa aaVar, com.twitter.android.people.adapters.q qVar) {
        am amVar = (am) CollectionUtils.b(aaVar.d);
        if (amVar != null) {
            this.a.a(qVar.b(), qVar, aaVar, amVar);
        }
    }

    public boolean a(i iVar) {
        return iVar instanceof com.twitter.android.people.adapters.q;
    }

    protected void a(ViewPager viewPager, com.twitter.android.people.adapters.q qVar) {
        viewPager.setPageMargin(0);
    }

    protected int b() {
        return 2130968820;
    }

    @FractionRes
    protected int d() {
        return 2131820550;
    }

    public String aF_() {
        return "STATE_FEATURED_CAROUSEL_VIEW_BINDER";
    }
}
