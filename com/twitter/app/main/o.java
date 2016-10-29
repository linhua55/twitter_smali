package com.twitter.app.main;

import android.net.Uri;
import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.twitter.android.AbsPagesAdapter;
import com.twitter.android.AbsPagesAdapter.PageSavedState;
import com.twitter.android.km;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import com.twitter.util.m;
import defpackage.bus;
import java.util.List;

/* compiled from: Twttr */
class o extends AbsPagesAdapter {
    final /* synthetic */ MainActivity g;
    private final DockLayout h;
    private int i;

    o(MainActivity mainActivity, MainActivity mainActivity2, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar, DockLayout dockLayout) {
        this.g = mainActivity;
        super(mainActivity2, mainActivity2.getSupportFragmentManager(), list, viewPager, horizontalListView, kmVar);
        this.h = dockLayout;
        registerDataSetObserver(new p(this, mainActivity));
    }

    public at b(Uri uri) {
        int a = a(uri);
        return a < 0 ? null : (at) this.b.get(a);
    }

    public String e() {
        return ((at) this.b.get(this.a.getCurrentItem())).e;
    }

    public Parcelable saveState() {
        return new PageSavedState(this.b);
    }

    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        String[] strArr = ((PageSavedState) parcelable).a;
        int i = 0;
        while (i < strArr.length && i < this.b.size()) {
            BaseFragment baseFragment = (TwitterListFragment) this.c.findFragmentByTag(strArr[i]);
            if (baseFragment != null) {
                at atVar = (at) this.b.get(i);
                atVar.a(baseFragment);
                baseFragment.a(new n(this.g, atVar.a, this.g.p, this.h, this));
                if (this.h != null) {
                    baseFragment.a(this.g.i);
                }
            }
            i++;
        }
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        BaseFragment baseFragment = (TwitterListFragment) super.instantiateItem(viewGroup, i);
        at atVar = (at) this.b.get(i);
        atVar.a(baseFragment);
        baseFragment.a(new n(this.g, atVar.a, this.g.p, this.h, this)).a(this.g.i);
        if (i == this.a.getCurrentItem()) {
            baseFragment.af();
        }
        return baseFragment;
    }

    public void onPageSelected(int i) {
        super.onPageSelected(i);
        at atVar = (at) this.b.get(i);
        this.g.c(atVar.a);
        a(c(this.f));
        TwitterListFragment twitterListFragment = (TwitterListFragment) c(atVar);
        if (twitterListFragment != null) {
            twitterListFragment.af();
        }
        this.g.c(atVar);
        this.f = i;
        this.g.U = m.b();
        this.g.Y().h();
    }

    public void onPageScrolled(int i, float f, int i2) {
        Object obj = 1;
        super.onPageScrolled(i, f, i2);
        if (bus.a().f() && this.i == 1) {
            Object obj2 = i == 0 ? 1 : null;
            if (i2 != 0) {
                obj = null;
            }
            if (obj2 != null && r0 != null) {
                this.g.Y().f();
            }
        }
    }

    public void onPageScrollStateChanged(int i) {
        super.onPageScrollStateChanged(i);
        this.i = i;
    }
}
