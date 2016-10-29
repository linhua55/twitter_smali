package com.twitter.android.alerts.landing;

import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.twitter.android.eventtimelines.k;
import com.twitter.android.km;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
public class j extends com.twitter.android.eventtimelines.j {
    private final k h;

    public j(FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar, k kVar, k kVar2) {
        super(fragmentActivity, list, viewPager, horizontalListView, kmVar, kVar);
        this.h = kVar2;
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Object instantiateItem = super.instantiateItem(viewGroup, i);
        if (instantiateItem instanceof AlertTimelineFragment) {
            a(i, (AlertTimelineFragment) instantiateItem);
        }
        return instantiateItem;
    }

    private void a(int i, AlertTimelineFragment alertTimelineFragment) {
        this.h.a(i, alertTimelineFragment);
    }
}
