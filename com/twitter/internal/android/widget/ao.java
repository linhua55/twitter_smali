package com.twitter.internal.android.widget;

import android.view.View;
import android.view.View.OnLongClickListener;
import bca;
import com.twitter.util.aj;

/* compiled from: Twttr */
class ao implements OnLongClickListener {
    final /* synthetic */ bca a;
    final /* synthetic */ ToolBar b;

    ao(ToolBar toolBar, bca bca) {
        this.b = toolBar;
        this.a = bca;
    }

    public boolean onLongClick(View view) {
        if (!aj.b(this.a.j())) {
            return false;
        }
        this.a.k();
        return true;
    }
}
