package com.twitter.android.widget;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import com.twitter.android.ScrollingHeaderActivity;
import com.twitter.android.TimelineFragment;
import com.twitter.android.client.ay;
import com.twitter.app.common.inject.v;
import com.twitter.app.common.list.t;
import com.twitter.library.service.x;

/* compiled from: Twttr */
public class ScrollingHeaderTimelineFragment extends TimelineFragment {
    protected /* synthetic */ v b(LayoutInflater layoutInflater, Bundle bundle) {
        return c(layoutInflater, bundle);
    }

    protected boolean p() {
        return true;
    }

    protected boolean Z() {
        return true;
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        FragmentActivity activity = getActivity();
        if (activity instanceof ScrollingHeaderActivity) {
            ((ScrollingHeaderActivity) activity).a(false);
        }
    }

    protected ay c(LayoutInflater layoutInflater, Bundle bundle) {
        t tVar = new t();
        a(tVar);
        return ay.a(layoutInflater, tVar, bundle);
    }

    protected void J_() {
    }
}
