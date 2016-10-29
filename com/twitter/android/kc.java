package com.twitter.android;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;
import com.twitter.util.ui.r;

/* compiled from: Twttr */
class kc implements OnScrollListener {
    final /* synthetic */ ListView a;
    final /* synthetic */ View b;
    final /* synthetic */ MediaTagFragment c;

    kc(MediaTagFragment mediaTagFragment, ListView listView, View view) {
        this.c = mediaTagFragment;
        this.a = listView;
        this.b = view;
    }

    public void onScrollStateChanged(AbsListView absListView, int i) {
    }

    public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        if (MediaTagFragment.a(this.c) == -1) {
            MediaTagFragment.a(this.c, absListView.getFirstVisiblePosition());
        }
        boolean z = i2 > 0 && !(i == 0 && this.a.getChildAt(0).getTop() == 0);
        this.b.setVisibility(z ? 0 : 8);
        if (MediaTagFragment.a(this.c) > -1 && Math.abs(i - MediaTagFragment.a(this.c)) > 3) {
            r.b(this.c.getActivity(), MediaTagFragment.b(this.c), false);
        }
    }
}
