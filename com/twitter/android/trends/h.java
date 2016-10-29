package com.twitter.android.trends;

import android.widget.Toast;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bex;

/* compiled from: Twttr */
class h extends z {
    final /* synthetic */ TrendsPlusActivity a;

    private h(TrendsPlusActivity trendsPlusActivity) {
        this.a = trendsPlusActivity;
    }

    public void a(x xVar) {
        if (xVar instanceof bex) {
            ab N = xVar.N();
            if (N != null && N.c == this.a.ab().g()) {
                if (xVar.U()) {
                    TrendsPlusFragment c = this.a.c();
                    if (c != null) {
                        c.r();
                        return;
                    }
                    return;
                }
                Toast.makeText(this.a, 2131363971, 1).show();
                return;
            }
            return;
        }
        super.a(xVar);
    }
}
