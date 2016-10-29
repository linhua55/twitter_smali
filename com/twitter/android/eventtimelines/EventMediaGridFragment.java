package com.twitter.android.eventtimelines;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import bbu;
import com.twitter.android.EventGridFragment;
import com.twitter.android.ly;
import com.twitter.library.scribe.TwitterScribeItem;
import com.twitter.library.scribe.TwitterScribeLog;

/* compiled from: Twttr */
public class EventMediaGridFragment extends EventGridFragment implements g {
    private final i a;
    private boolean ab;
    private int ac;
    private int ad;
    private h ae;
    private TwitterScribeItem af;

    public EventMediaGridFragment() {
        this.a = new i();
        this.ab = false;
        this.ac = 0;
        this.ad = 0;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        if (activity instanceof h) {
            this.ae = (h) activity;
        }
    }

    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        this.af = (TwitterScribeItem) t().h("scribe_item");
    }

    protected void J_() {
    }

    public boolean a(AbsListView absListView, int i, int i2, int i3, boolean z) {
        if (this.ae == null || !this.ae.A()) {
            return false;
        }
        this.a.a(absListView, i, z, this.P);
        this.ae.a(this.a);
        this.a.d();
        return super.a(absListView, i, i2, i3, z);
    }

    public boolean a(AbsListView absListView, int i) {
        if (this.ae == null || !this.ae.A()) {
            return false;
        }
        this.a.a(i);
        this.ae.a(this.a);
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

    protected ly S_() {
        ly S_ = super.S_();
        S_.a(true);
        return S_;
    }

    protected void a(String str) {
        bbu.a(((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) ((TwitterScribeLog) new TwitterScribeLog(aT().g()).i(T())).b(new String[]{str})).a(this.u, c(3), this.d, this.c)).a(aD())).a(this.af));
    }

    public void e(int i) {
        if (this.ac != 0) {
            i = this.ad;
        }
        ap().a(this.ac, i);
    }
}
