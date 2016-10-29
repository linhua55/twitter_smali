package com.twitter.android;

import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import com.twitter.internal.android.widget.DockLayout;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
class qy extends ej {
    final /* synthetic */ TabbedVitFollowersActivity g;

    qy(TabbedVitFollowersActivity tabbedVitFollowersActivity, FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar, DockLayout dockLayout) {
        this.g = tabbedVitFollowersActivity;
        super(fragmentActivity, list, viewPager, horizontalListView, kmVar, dockLayout);
    }

    public void onPageSelected(int i) {
        super.onPageSelected(i);
        this.g.a(i, this.g.ab().g());
    }
}
