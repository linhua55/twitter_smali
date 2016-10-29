package com.twitter.android;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.twitter.android.widget.ScrollingHeaderListFragment;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
class ms extends AbsPagesAdapter {
    final /* synthetic */ ProfileActivity g;

    ms(ProfileActivity profileActivity, FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar) {
        this.g = profileActivity;
        super(fragmentActivity, fragmentActivity.getSupportFragmentManager(), list, viewPager, horizontalListView, kmVar);
    }

    public void a(List<at> list) {
        this.b = list;
        d();
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        ScrollingHeaderListFragment scrollingHeaderListFragment = (ScrollingHeaderListFragment) super.instantiateItem(viewGroup, i);
        this.g.a((Fragment) scrollingHeaderListFragment);
        scrollingHeaderListFragment.e(!io.a());
        scrollingHeaderListFragment.m(i);
        a(scrollingHeaderListFragment, i);
        return scrollingHeaderListFragment;
    }

    public void onPageSelected(int i) {
        int a = this.e.a();
        if (!this.g.a(i, ProfileActivity.b)) {
            this.g.aC.k();
        }
        super.onPageSelected(i);
        a(c(a));
        b(a(i));
        this.g.y.a();
    }

    public void onPageScrollStateChanged(int i) {
        super.onPageScrollStateChanged(i);
        if (i == 1) {
            for (at c : this.b) {
                this.g.a(c(c));
            }
        }
    }
}
