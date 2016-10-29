package com.facebook.shimmer;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

/* compiled from: Twttr */
class c implements OnGlobalLayoutListener {
    final /* synthetic */ ShimmerFrameLayout a;

    c(ShimmerFrameLayout shimmerFrameLayout) {
        this.a = shimmerFrameLayout;
    }

    public void onGlobalLayout() {
        boolean a = this.a.q;
        this.a.g();
        if (this.a.j || a) {
            this.a.b();
        }
    }
}
