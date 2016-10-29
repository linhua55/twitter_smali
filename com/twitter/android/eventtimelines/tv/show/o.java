package com.twitter.android.eventtimelines.tv.show;

import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import com.twitter.android.eventtimelines.j;
import com.twitter.android.eventtimelines.k;
import com.twitter.android.km;
import com.twitter.android.ou;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import defpackage.zn;
import java.util.List;
import zl;

/* compiled from: Twttr */
class o extends j implements zn {
    final /* synthetic */ TvShowActivity h;

    o(TvShowActivity tvShowActivity, FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar, k kVar) {
        this.h = tvShowActivity;
        super(fragmentActivity, list, viewPager, horizontalListView, kmVar, kVar);
        this.g.a(new zl(this));
    }

    public ou c_(int i) {
        return new p(this.h, a(i).a, this.e);
    }

    public int a() {
        return this.h.F();
    }
}
