package com.twitter.android.client;

import android.os.Bundle;
import android.view.LayoutInflater;
import com.twitter.android.timeline.aw;
import com.twitter.android.vu;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.t;
import com.twitter.refresh.widget.a;

/* compiled from: Twttr */
public class ay extends k<aw, vu> {
    public static ay a(LayoutInflater layoutInflater, t tVar, Bundle bundle) {
        return new ay(layoutInflater, tVar, bundle);
    }

    protected ay(LayoutInflater layoutInflater, t tVar, Bundle bundle) {
        super(layoutInflater, tVar, bundle);
    }

    public a d() {
        int headerViewsCount = this.a.getHeaderViewsCount();
        int firstVisiblePosition = this.a.getFirstVisiblePosition();
        if (firstVisiblePosition < headerViewsCount) {
            return new a(firstVisiblePosition, -1, 0);
        }
        return super.d();
    }
}
