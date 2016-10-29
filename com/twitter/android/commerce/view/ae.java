package com.twitter.android.commerce.view;

import android.os.Bundle;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.m;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
final class ae extends z {
    private final WeakReference<ProductSummaryActivity> a;
    private boolean b;

    ae(ProductSummaryActivity productSummaryActivity) {
        this.a = new WeakReference(productSummaryActivity);
        productSummaryActivity.a(m.b());
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
            ProductSummaryActivity productSummaryActivity = (ProductSummaryActivity) this.a.get();
            if (productSummaryActivity != null && !productSummaryActivity.isFinishing()) {
                productSummaryActivity.c(bundle, aaVar.b());
            }
        }
    }
}
