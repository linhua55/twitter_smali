package com.twitter.internal.android.widget;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

/* compiled from: Twttr */
class am implements OnKeyListener {
    final /* synthetic */ ToolBar a;

    am(ToolBar toolBar) {
        this.a = toolBar;
    }

    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (i == 82) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                return true;
            }
            if (keyEvent.getAction() == 1) {
                ToolBar.f(this.a).dismiss();
                return true;
            }
        }
        return false;
    }
}
