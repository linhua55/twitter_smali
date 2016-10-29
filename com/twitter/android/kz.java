package com.twitter.android;

import android.support.v4.app.Fragment;
import android.widget.ListView;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.internal.android.widget.i;
import com.twitter.library.client.at;
import com.twitter.library.widget.StatusToolBar;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class kz extends i {
    private final WeakReference<ky> a;
    private int b;
    private boolean c;

    public kz(ky kyVar, ToolBar toolBar, int i) {
        this.c = true;
        this.b = i;
        this.a = new WeakReference(kyVar);
        if (toolBar != null && (toolBar instanceof StatusToolBar)) {
            StatusToolBar statusToolBar = (StatusToolBar) toolBar;
            statusToolBar.setStatusToolBarListener(new la(this, i, statusToolBar));
        }
    }

    public void a(int i, int i2, int i3, int i4) {
        ky kyVar = (ky) this.a.get();
        if (kyVar != null) {
            AbsPagesAdapter g = kyVar.g();
            if (g != null) {
                for (at a : g.aw_()) {
                    Fragment a2 = kyVar.a(a);
                    if (a2 instanceof TwitterListFragment) {
                        int i5 = (this.c ? this.b : 0) + i2;
                        TwitterListFragment twitterListFragment = (TwitterListFragment) a2;
                        if (i5 != twitterListFragment.aq()) {
                            int i6;
                            twitterListFragment.n(i5);
                            ListView listView = twitterListFragment.ap().a;
                            if (i2 != 0) {
                                i6 = 1;
                            } else {
                                i6 = 0;
                            }
                            listView.scrollTo(0, i6);
                        }
                    }
                    if (a2 instanceof TimelineFragment) {
                        TimelineFragment timelineFragment = (TimelineFragment) a2;
                        if (i4 <= timelineFragment.aq()) {
                            timelineFragment.a(i4);
                        }
                    }
                }
            }
        }
    }

    public void a(boolean z) {
        this.c = z;
    }
}
