package com.twitter.android.geo.places;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.twitter.android.AbsPagesAdapter;
import com.twitter.android.TweetListFragment;
import com.twitter.android.km;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
class c extends AbsPagesAdapter {
    final /* synthetic */ PlaceLandingActivity g;

    c(PlaceLandingActivity placeLandingActivity, FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar) {
        this.g = placeLandingActivity;
        super(fragmentActivity, fragmentActivity.getSupportFragmentManager(), list, viewPager, horizontalListView, kmVar);
        this.f = viewPager.getCurrentItem();
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment = (TweetListFragment) super.instantiateItem(viewGroup, i);
        a(fragment, i);
        if (i == 0 && (fragment instanceof PlaceTimelineFragment)) {
            ((PlaceTimelineFragment) fragment).a(this.g);
        }
        this.g.a(fragment);
        return fragment;
    }

    public void onPageSelected(int i) {
        super.onPageSelected(i);
        a(c(this.f));
        b(a(i));
        this.f = i;
    }

    public void onPageScrollStateChanged(int i) {
        super.onPageScrollStateChanged(i);
        if (i == 1) {
            for (at c : this.e.b()) {
                this.g.a(c(c));
            }
        }
    }
}
