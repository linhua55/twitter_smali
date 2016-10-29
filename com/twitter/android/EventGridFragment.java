package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.t;
import com.twitter.library.scribe.ScribeLog;
import com.twitter.library.service.x;
import com.twitter.model.topic.TwitterTopic;
import com.twitter.refresh.widget.a;

/* compiled from: Twttr */
public class EventGridFragment extends SearchPhotosFragment {
    private int a;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = getResources().getDimensionPixelSize(2131690233);
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.d(2130969366).f(tVar.d() ? 2130969064 : 2130969367);
    }

    protected boolean p() {
        return true;
    }

    public int q() {
        return 7;
    }

    protected void a(Context context) {
        if (ah()) {
            super.a(context);
        } else {
            u();
        }
    }

    protected String r() {
        return "search_id=?";
    }

    protected void a(a aVar, boolean z) {
        if (b(aVar.b) >= ap().a.getHeaderViewsCount() || !z) {
            ap().a(1, aVar.c);
        }
    }

    protected void a(TwitterTopic twitterTopic) {
    }

    protected void J_() {
    }

    public void n() {
        if (an()) {
            k ap = ap();
            if (ap.a.getFirstVisiblePosition() != 0) {
                ap.a(1, this.a);
            }
        }
        if (this.o > 0) {
            m();
            a(ScribeLog.a(this.B, P(), "new_tweet_prompt", null, "click"));
        }
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        FragmentActivity activity = getActivity();
        if (activity instanceof ScrollingHeaderActivity) {
            ((ScrollingHeaderActivity) activity).a(false);
        }
        if (i2 == 2 && this.F != null) {
            this.F.a();
        }
    }
}
