package com.twitter.android.commerce.view;

import android.os.Bundle;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
final class q extends z {
    private final WeakReference<OfferSummaryActivity> a;
    private boolean b;

    q(OfferSummaryActivity offerSummaryActivity) {
        this.a = new WeakReference(offerSummaryActivity);
    }

    public void a(x xVar) {
        if (!this.b) {
            Bundle bundle;
            aa aaVar = (aa) xVar.l().b();
            if (aaVar.b()) {
                bundle = aaVar.c.getBundle("offer_details_bundle");
            } else {
                bundle = aaVar.c.getBundle("commerce_error_list_bundle");
            }
            OfferSummaryActivity offerSummaryActivity = (OfferSummaryActivity) this.a.get();
            if (offerSummaryActivity != null && !offerSummaryActivity.isFinishing()) {
                offerSummaryActivity.a(bundle, aaVar.b());
            }
        }
    }
}
