package com.twitter.android;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TabWidget;
import com.twitter.android.widget.TabIndicator;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.TwitterListFragment;
import com.twitter.internal.android.widget.z;

/* compiled from: Twttr */
public abstract class TabbedUsersActivity extends TabbedFragmentActivity implements z {
    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        this.d.setPageMargin(getResources().getDimensionPixelSize(2131690639));
        this.b.setOnTabClickedListener(this);
    }

    public void onTabChanged(String str) {
        qx qxVar = (qx) i();
        if (qxVar != null) {
            qxVar.n();
        }
        super.onTabChanged(str);
        qxVar = (qx) i();
        if (qxVar != null) {
            qxVar.m();
        }
        m();
    }

    private void m() {
        TabWidget tabWidget = this.b.getTabWidget();
        for (int i = 0; i < tabWidget.getTabCount(); i++) {
            View childTabViewAt = tabWidget.getChildTabViewAt(i);
            if (childTabViewAt instanceof TabIndicator) {
                boolean z;
                if (this.b.getCurrentTab() == i) {
                    z = true;
                } else {
                    z = false;
                }
                ((TabIndicator) childTabViewAt).setTitleBold(z);
            }
        }
    }

    public void l() {
        r();
    }

    private void r() {
        TwitterListFragment twitterListFragment = (TwitterListFragment) i();
        if (twitterListFragment != null) {
            twitterListFragment.aJ();
        }
    }

    protected void a(String str, int i, Bundle bundle, Class cls) {
        this.e.a(this.b.newTabSpec(str).setIndicator(TabIndicator.a(LayoutInflater.from(this), 2130969514, this.b, 0, i)), cls, bundle);
    }
}
