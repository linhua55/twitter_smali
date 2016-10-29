package com.twitter.android.communities;

import android.support.v4.app.FragmentActivity;
import android.support.v4.view.ViewPager;
import com.twitter.android.AbsPagesAdapter;
import com.twitter.android.km;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
class b extends AbsPagesAdapter {
    protected b(FragmentActivity fragmentActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar) {
        super(fragmentActivity, fragmentActivity.getSupportFragmentManager(), list, viewPager, horizontalListView, kmVar);
    }
}
