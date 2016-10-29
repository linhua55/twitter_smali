package com.twitter.android.util;

import android.view.View;
import bca;
import com.twitter.android.client.u;
import com.twitter.android.news.n;
import com.twitter.internal.android.widget.ToolBar;

/* compiled from: Twttr */
class ag implements Runnable {
    final /* synthetic */ ToolBar a;
    final /* synthetic */ u b;
    final /* synthetic */ af c;

    ag(af afVar, ToolBar toolBar, u uVar) {
        this.c = afVar;
        this.a = toolBar;
        this.b = uVar;
    }

    public void run() {
        bca a = this.a.a(2131953446);
        if (a != null && a.h()) {
            this.b.a("highlights_tooltip_overflow");
        }
        a = this.a.a(2131953230);
        if (a != null && a.h()) {
            this.b.a(n.g(af.a(this.c)));
        }
        a = this.a.a(2131953441);
        if (a != null && a.h()) {
            this.b.a("dm_tooltip");
        }
        a = this.a.a(2131953440);
        bca a2 = this.a.a(2131953447);
        View findViewById = this.a.findViewById(2131951649);
        if (a != null && a.h()) {
            this.b.a("connect_tooltip");
        } else if (findViewById != null && findViewById.getVisibility() == 0) {
            this.b.a("connect_tooltip_drawe");
        } else if (a2 != null && a2.h()) {
            this.b.a("connect_tooltip_overflow");
        }
    }
}
