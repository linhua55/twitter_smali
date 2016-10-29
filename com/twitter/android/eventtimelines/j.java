package com.twitter.android.eventtimelines;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.twitter.android.AbsPagesAdapter;
import com.twitter.android.km;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;
import zk;
import zp;

/* compiled from: Twttr */
public class j extends AbsPagesAdapter {
    protected final zk g;
    private final k h;

    public /* synthetic */ Fragment getItem(int i) {
        return b(i);
    }

    public j(FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar, k kVar) {
        super(fragmentActivity, fragmentActivity.getSupportFragmentManager(), list, viewPager, horizontalListView, kmVar);
        this.h = kVar;
        this.f = viewPager.getCurrentItem();
        this.g = new zk();
        this.g.a(new zp());
    }

    public BaseFragment b(int i) {
        Fragment b = super.b(i);
        this.g.a(b);
        return b;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        BaseFragment baseFragment = (BaseFragment) super.instantiateItem(viewGroup, i);
        this.g.b(baseFragment, i);
        a(baseFragment, i);
        this.h.a(baseFragment);
        return baseFragment;
    }

    public void onPageSelected(int i) {
        super.onPageSelected(i);
        at a = a(i);
        a(c(this.f));
        Fragment c = c(a);
        this.h.a(c);
        if (c != null) {
            this.g.a(c, i);
        }
        this.f = i;
    }

    public void onPageScrollStateChanged(int i) {
        super.onPageScrollStateChanged(i);
        if (i == 1) {
            for (at c : this.b) {
                this.h.a(c(c));
            }
        }
    }
}
