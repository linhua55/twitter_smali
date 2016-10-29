package com.twitter.android.commerce.view;

import android.os.Bundle;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.m;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
final class r extends z {
    private final WeakReference<OfferSummaryActivity> a;
    private boolean b;

    r(OfferSummaryActivity offerSummaryActivity) {
        this.a = new WeakReference(offerSummaryActivity);
        offerSummaryActivity.a(m.b());
    }

    public void a(x xVar) {
        if (!this.b) {
            Bundle bundle;
            aa aaVar = (aa) xVar.l().b();
            if (aaVar.b()) {
                bundle = aaVar.c;
            } else {
                bundle = aaVar.c.getBundle("commerce_error_list_bundle");
            }
            OfferSummaryActivity offerSummaryActivity = (OfferSummaryActivity) this.a.get();
            if (offerSummaryActivity != null && !offerSummaryActivity.isFinishing()) {
                offerSummaryActivity.b(bundle, aaVar.b());
            }
        }
    }
}
