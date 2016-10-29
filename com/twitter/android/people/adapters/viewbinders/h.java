package com.twitter.android.people.adapters.viewbinders;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.os.Parcelable;
import android.support.annotation.FractionRes;
import android.support.annotation.LayoutRes;
import android.support.v4.content.ContextCompat;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.twitter.android.people.adapters.m;
import com.twitter.android.people.adapters.viewbinders.h$com.twitter.android.people.adapters.viewbinders.k;
import com.twitter.android.people.bb;
import com.twitter.android.widget.CarouselRowView;
import com.twitter.android.widget.j;
import com.twitter.android.widget.l;
import com.twitter.app.AutoSaveState;
import com.twitter.app.SaveState;
import com.twitter.app.common.inject.n;
import com.twitter.app.common.util.StateSaver;
import com.twitter.util.aj;
import com.twitter.util.collection.MutableMap;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import com.twitter.util.object.g;
import defpackage.bcu;
import defpackage.chd;
import java.util.Map;

@AutoSaveState
/* compiled from: Twttr */
public abstract class h<T, A extends l<T>, C extends m<T>> implements aj<C>, n<StateSaver<h<T, A, C>>> {
    protected final bb a;
    @SaveState
    Map<String, Integer> b;
    private final g<A> c;

    public /* synthetic */ Parcelable c() {
        return e();
    }

    protected h(bb bbVar, g<A> gVar, StateSaver<h<T, A, C>> stateSaver) {
        this.b = MutableMap.a();
        this.a = bbVar;
        this.c = gVar;
        stateSaver.a(this);
    }

    public View a(C c, ViewGroup viewGroup) {
        Context context = viewGroup.getContext();
        CarouselRowView carouselRowView = (CarouselRowView) LayoutInflater.from(context).inflate(b(), viewGroup, false);
        l lVar = (l) this.c.b();
        j a = a(context, lVar);
        int scaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        a.a((float) d());
        k a2 = a(carouselRowView, lVar);
        carouselRowView.setTag(a2);
        a.a(context.getResources().getFraction(d(), 1, 1));
        carouselRowView.setCarouselAdapter(a);
        carouselRowView.setCarouselBackground(new ColorDrawable(ContextCompat.getColor(context, bcu.app_background)));
        carouselRowView.a(new com.twitter.android.widget.m(carouselRowView, viewGroup, scaledTouchSlop, a2.b));
        carouselRowView.a(new i(this, a2));
        return carouselRowView;
    }

    protected k a(CarouselRowView carouselRowView, A a) {
        return new k(this, carouselRowView, a);
    }

    private void a(k kVar, int i) {
        if (kVar.c != null && aj.b(kVar.c.b)) {
            this.b.put(kVar.c.b, Integer.valueOf(i));
        }
    }

    protected j<T> a(Context context, A a) {
        return new j(context, a);
    }

    protected void a(T t, C c, boolean z) {
        this.a.a(c.b(), c, t, null, z);
    }

    protected void a(T t, C c) {
    }

    @LayoutRes
    protected int b() {
        return 2130968870;
    }

    public void a(View view, C c) {
        k kVar = (k) ObjectUtils.a(view.getTag());
        CarouselRowView carouselRowView = (CarouselRowView) view;
        j jVar = (j) e.a(carouselRowView.getCarouselAdapter());
        kVar.c = c;
        kVar.b.a = c;
        if (jVar.a() == c.a.size()) {
            jVar.b(new chd(c.a));
        } else {
            jVar.a(new chd(c.a));
        }
        int intValue = ((Integer) e.b(this.b.get(c.b), Integer.valueOf(0))).intValue() % jVar.a();
        a(c.a.get(intValue), (m) c);
        if (carouselRowView.getCurrentItemIndex() != intValue) {
            kVar.b.a();
            carouselRowView.a(intValue, false);
        }
        a(kVar.d, (m) c);
        jVar.notifyDataSetChanged();
    }

    protected void a(ViewPager viewPager, C c) {
    }

    public boolean a(C c) {
        return false;
    }

    @FractionRes
    protected int d() {
        return 2131820548;
    }

    public StateSaver<h<T, A, C>> e() {
        return new CarouselViewBinderSavedState(this);
    }
}
