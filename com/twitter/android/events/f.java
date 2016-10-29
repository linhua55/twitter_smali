package com.twitter.android.events;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import android.widget.ListView;
import com.twitter.android.AbsPagesAdapter;
import com.twitter.android.SearchFragment;
import com.twitter.android.io;
import com.twitter.android.km;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import com.twitter.library.scribe.ScribeItem;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;
import defpackage.bbu;
import java.util.List;

/* compiled from: Twttr */
class f extends AbsPagesAdapter {
    final /* synthetic */ TwitterEventActivity g;

    public /* synthetic */ Fragment getItem(int i) {
        return b(i);
    }

    f(TwitterEventActivity twitterEventActivity, FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar) {
        this.g = twitterEventActivity;
        super(fragmentActivity, fragmentActivity.getSupportFragmentManager(), list, viewPager, horizontalListView, kmVar);
        this.f = viewPager.getCurrentItem();
    }

    public BaseFragment b(int i) {
        TwitterListFragment twitterListFragment = (TwitterListFragment) super.b(i);
        twitterListFragment.e(!io.a());
        return twitterListFragment;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment = (SearchFragment) super.instantiateItem(viewGroup, i);
        fragment.a(new h(this.g, a(i).a, this.e));
        a(fragment, i);
        this.g.a(fragment);
        return fragment;
    }

    public void onPageSelected(int i) {
        super.onPageSelected(i);
        at a = a(i);
        a(c(this.f));
        Fragment fragment = (SearchFragment) c(a);
        if (fragment != null) {
            this.g.a(fragment);
            ListView listView = fragment.ap().a;
            listView.clearFocus();
            listView.post(new g(this, fragment));
            fragment.af();
            fragment.a(new h(this.g, a.a, this.e));
        }
        this.f = i;
        long g = this.g.ab().g();
        ScribeItem a2 = TwitterScribeItem.a(this.g.L, this.g.M);
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b(this.g.N, a.e, this.g.Q, null, "click")).a(a2));
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b(this.g.N, a.e, this.g.Q, null, "impression")).a(a2));
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
