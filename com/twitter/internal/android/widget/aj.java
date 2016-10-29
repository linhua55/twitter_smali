package com.twitter.internal.android.widget;

import android.view.View;
import android.view.View.OnClickListener;
import bca;

/* compiled from: Twttr */
class aj implements OnClickListener {
    final /* synthetic */ bca a;
    final /* synthetic */ ToolBar b;

    aj(ToolBar toolBar, bca bca) {
        this.b = toolBar;
        this.a = bca;
    }

    public void onClick(View view) {
        if (ToolBar.c(this.b).c()) {
            for (bca bca : ToolBar.d(this.b)) {
                if (bca.g()) {
                    bca.f();
                    return;
                }
            }
            for (bca bca2 : ToolBar.e(this.b)) {
                if (bca2.g()) {
                    bca2.f();
                    return;
                }
            }
        } else if (ToolBar.a(this.b) != null) {
            ToolBar.a(this.b).a(this.a);
        }
    }
}
