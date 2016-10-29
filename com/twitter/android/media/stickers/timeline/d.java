package com.twitter.android.media.stickers.timeline;

import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.ViewGroup;
import com.twitter.android.AbsPagesAdapter;
import com.twitter.android.TweetListFragment;
import com.twitter.android.km;
import com.twitter.android.media.imageeditor.stickers.c;
import com.twitter.internal.android.widget.HorizontalListView;
import com.twitter.library.client.at;
import java.util.List;

/* compiled from: Twttr */
class d extends AbsPagesAdapter {
    final /* synthetic */ StickerTimelineActivity g;

    d(StickerTimelineActivity stickerTimelineActivity, List<at> list, ViewPager viewPager, HorizontalListView horizontalListView, km kmVar) {
        this.g = stickerTimelineActivity;
        super(stickerTimelineActivity, stickerTimelineActivity.getSupportFragmentManager(), list, viewPager, horizontalListView, kmVar);
        this.f = viewPager.getCurrentItem();
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        Fragment fragment = (TweetListFragment) super.instantiateItem(viewGroup, i);
        a(fragment, i);
        this.g.a(fragment);
        return fragment;
    }

    public void onPageScrollStateChanged(int i) {
        super.onPageScrollStateChanged(i);
        if (i == 1) {
            for (at c : this.e.b()) {
                this.g.a(c(c));
            }
        }
    }

    public void onPageSelected(int i) {
        super.onPageSelected(i);
        at a = a(i);
        a(c(this.f));
        this.g.a(c(a));
        this.f = i;
        c.a(this.g.ab().g(), a.e);
    }
}
