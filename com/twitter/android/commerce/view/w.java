package com.twitter.android.commerce.view;

import com.twitter.library.commerce.model.v;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.ab;
import defpackage.bti;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class w extends z {
    private final WeakReference<OrderHistoryFragment> a;

    public w(OrderHistoryFragment orderHistoryFragment) {
        this.a = new WeakReference(orderHistoryFragment);
    }

    public void a(x xVar) {
        OrderHistoryFragment orderHistoryFragment = (OrderHistoryFragment) this.a.get();
        if (orderHistoryFragment != null && orderHistoryFragment.getActivity() != null && !orderHistoryFragment.getActivity().isFinishing() && (xVar instanceof bti)) {
            aa aaVar = (aa) xVar.l().b();
            if (aaVar.b()) {
                orderHistoryFragment.a((v) ab.a(aaVar.c, "order_history_list", v.a));
            } else {
                orderHistoryFragment.a(aaVar.c.getBundle("commerce_error_list_bundle"));
            }
        }
    }
}
