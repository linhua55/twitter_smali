package com.twitter.android.news;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.twitter.android.AbsPagesAdapter;
import com.twitter.android.km;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
class j extends AbsPagesAdapter {
    final /* synthetic */ NewsDetailActivity g;

    j(NewsDetailActivity newsDetailActivity, FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar) {
        this.g = newsDetailActivity;
        super(fragmentActivity, fragmentActivity.getSupportFragmentManager(), list, viewPager, horizontalListView, kmVar);
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment = (TwitterListFragment) super.instantiateItem(viewGroup, i);
        this.g.a(fragment);
        a(fragment, i);
        return fragment;
    }
}
