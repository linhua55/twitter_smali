package com.twitter.android.commerce.view;

import com.twitter.library.commerce.model.r;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.ab;
import defpackage.btf;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class u extends z {
    final /* synthetic */ OrderHistoryDetailsActivity a;
    private final WeakReference<OrderHistoryDetailsActivity> b;

    public u(OrderHistoryDetailsActivity orderHistoryDetailsActivity, OrderHistoryDetailsActivity orderHistoryDetailsActivity2) {
        this.a = orderHistoryDetailsActivity;
        this.b = new WeakReference(orderHistoryDetailsActivity2);
    }

    public void a(x xVar) {
        OrderHistoryDetailsActivity orderHistoryDetailsActivity = (OrderHistoryDetailsActivity) this.b.get();
        if (orderHistoryDetailsActivity != null && !orderHistoryDetailsActivity.isFinishing() && (xVar instanceof btf)) {
            aa aaVar = (aa) xVar.l().b();
            if (aaVar.b()) {
                orderHistoryDetailsActivity.a((r) ab.a(aaVar.c, "order_history_item", r.a));
            } else {
                orderHistoryDetailsActivity.a(aaVar.c.getBundle("commerce_error_list_bundle"));
            }
        }
    }
}
