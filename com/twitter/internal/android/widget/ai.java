package com.twitter.internal.android.widget;

import android.view.View;
import android.view.View.OnClickListener;

/* compiled from: Twttr */
class ai implements OnClickListener {
    final /* synthetic */ ToolBar a;

    ai(ToolBar toolBar) {
        this.a = toolBar;
    }

    public void onClick(View view) {
        if (ToolBar.a(this.a) != null) {
            ToolBar.a(this.a).a(ToolBar.b(this.a));
        }
    }
}
