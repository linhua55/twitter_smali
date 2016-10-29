package com.twitter.internal.android.widget;

import android.view.View;
import android.view.View.OnClickListener;
import bca;

/* compiled from: Twttr */
class an implements OnClickListener {
    final /* synthetic */ bca a;
    final /* synthetic */ ToolBar b;

    an(ToolBar toolBar, bca bca) {
        this.b = toolBar;
        this.a = bca;
    }

    public void onClick(View view) {
        if (ToolBar.a(this.b) != null) {
            ToolBar.a(this.b).a(this.a);
        }
    }
}
