package com.twitter.android;

import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import com.twitter.android.AbsPagesAdapter.PageSavedState;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
class om extends ej {
    final /* synthetic */ SearchActivity g;
    private boolean h;

    public /* synthetic */ Fragment getItem(int i) {
        return b(i);
    }

    om(SearchActivity searchActivity, FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar, DockLayout dockLayout, ei eiVar) {
        this.g = searchActivity;
        super(fragmentActivity, list, viewPager, horizontalListView, kmVar, dockLayout, eiVar);
        this.h = true;
    }

    public void onPageSelected(int i) {
        super.onPageSelected(i);
        SearchFragment e = this.g.e();
        if (e != null) {
            this.g.b = e.q();
        }
        this.g.getIntent().putExtra("show_alternate", i != 0);
        this.g.a(e);
    }

    public void onPageScrolled(int i, float f, int i2) {
        super.onPageScrolled(i, f, i2);
        if (this.g.E != null) {
            this.g.E.b();
        }
    }

    public Parcelable saveState() {
        return new PageSavedState(this.b);
    }

    public void restoreState(Parcelable parcelable, ClassLoader classLoader) {
        String[] strArr = ((PageSavedState) parcelable).a;
        int min = Math.min(strArr.length, this.b.size());
        for (int i = 0; i < min; i++) {
            BaseFragment baseFragment = (TwitterListFragment) this.c.findFragmentByTag(strArr[i]);
            if (baseFragment != null) {
                ((at) this.b.get(i)).a(baseFragment);
            }
        }
    }

    public BaseFragment b(int i) {
        SearchFragment searchFragment = (SearchFragment) super.b(i);
        if (this.h && i == 0) {
            searchFragment.a(new on(this, searchFragment));
            this.h = false;
        }
        return searchFragment;
    }
}
