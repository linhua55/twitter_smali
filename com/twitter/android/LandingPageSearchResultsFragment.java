package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import com.twitter.app.common.list.k;
import com.twitter.app.common.list.t;
import com.twitter.library.service.x;
import com.twitter.refresh.widget.a;

/* compiled from: Twttr */
public class LandingPageSearchResultsFragment extends SearchResultsFragment {
    protected String a;
    private int ab;

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = t().f("scribe_component");
        this.ab = getResources().getDimensionPixelSize(2131690233);
    }

    protected void a(t tVar) {
        super.a(tVar);
        tVar.d(2130969366).f(tVar.d() ? 2130969064 : 2130969367);
    }

    protected boolean p() {
        return true;
    }

    protected void a(a aVar, boolean z) {
        int b = b(aVar.b);
        k ap = ap();
        if (b >= ap.a.getHeaderViewsCount() || !z) {
            ap.a(1, aVar.c);
        }
    }

    protected void a(Context context) {
        if (ah()) {
            super.a(context);
        } else {
            u();
        }
    }

    protected void J_() {
    }

    public void n() {
        if (an()) {
            k ap = ap();
            if (ap.a.getFirstVisiblePosition() != 0) {
                ap.a(1, this.ab);
            }
        }
        if (this.o > 0) {
            m();
        }
    }

    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (i2 == 2 && this.F != null) {
            this.F.a();
        }
    }
}
