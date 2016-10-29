package defpackage;

import android.view.View;

/* compiled from: Twttr */
/* renamed from: agh */
class agh implements cyw<View, Integer> {
    final /* synthetic */ agg a;

    agh(agg agg) {
        this.a = agg;
    }

    public Integer a(View view) {
        if (view.getVisibility() != 0) {
            return Integer.valueOf(0);
        }
        return Integer.valueOf(Math.max(0, view.getHeight() - view.getPaddingTop()));
    }
}
