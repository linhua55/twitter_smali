package com.twitter.android;

import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.app.common.list.n;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
public class ej extends AbsPagesAdapter {
    private final DockLayout g;
    private final ei h;

    public ej(FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar, DockLayout dockLayout) {
        this(fragmentActivity, list, viewPager, horizontalListView, kmVar, dockLayout, new ei(dockLayout));
    }

    public ej(FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar, DockLayout dockLayout, ei eiVar) {
        super(fragmentActivity, fragmentActivity.getSupportFragmentManager(), list, viewPager, horizontalListView, kmVar);
        this.g = dockLayout;
        this.h = eiVar;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        TwitterListFragment twitterListFragment = (TwitterListFragment) super.instantiateItem(viewGroup, i);
        a(twitterListFragment, i);
        return twitterListFragment;
    }

    protected void a(TwitterListFragment twitterListFragment, int i) {
        super.a(twitterListFragment, i);
        twitterListFragment.a(new n()).a(this.h);
    }

    public void onPageSelected(int i) {
        super.onPageSelected(i);
        d(i);
    }

    public void onPageScrolled(int i, float f, int i2) {
        super.onPageScrolled(i, f, i2);
        this.g.b();
    }

    void d(int i) {
        a(c(this.f));
        at a = a(i);
        TwitterListFragment twitterListFragment = (TwitterListFragment) c(a);
        b(a);
        if (this.f != i) {
            DockLayout dockLayout = this.g;
            boolean z = twitterListFragment != null && twitterListFragment.an() && twitterListFragment.ap().a.getFirstVisiblePosition() == 0;
            dockLayout.setTopLocked(z);
        }
        this.f = i;
    }
}
