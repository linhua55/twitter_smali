package com.twitter.android.events;

import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import com.twitter.android.EventGridFragment;

/* compiled from: Twttr */
public class ScrollableEventGridFragment extends EventGridFragment implements e {
    private final d a;
    private boolean ab;
    private int ac;
    private int ad;

    public ScrollableEventGridFragment() {
        this.a = new d();
        this.ab = false;
        this.ac = 0;
        this.ad = 0;
    }

    protected void J_() {
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        TwitterEventActivity twitterEventActivity = (TwitterEventActivity) getActivity();
        if (!twitterEventActivity.A()) {
            return false;
        }
        this.a.a(absListView, i, z, this.P);
        twitterEventActivity.a(this.a);
        this.a.d();
        return super.a(absListView, i, i2, i3, z);
    }

    public boolean a(AbsListView absListView, int i) {
        TwitterEventActivity twitterEventActivity = (TwitterEventActivity) getActivity();
        if (!twitterEventActivity.A()) {
            return false;
        }
        this.a.a(i);
        twitterEventActivity.a(this.a);
        this.a.d();
        if (i == 0) {
            ListView listView = ap().a;
            View childAt = listView.getChildAt(0);
            if (childAt != null) {
                this.ac = listView.getFirstVisiblePosition();
                this.ad = childAt.getTop();
            }
        }
        return super.a(absListView, i);
    }

    public int q() {
        return -1;
    }

    public void a() {
        super.a();
        if (this.ab) {
            g();
            this.ab = false;
        }
    }

    public void e() {
        this.ab = true;
        super.e();
    }

    protected void d() {
        this.a.d();
        this.a.b(0);
        super.d();
    }

    public void e(int i) {
        if (this.ac != 0) {
            i = this.ad;
        }
        ap().a(this.ac, i);
    }
}
