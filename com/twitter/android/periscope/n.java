package com.twitter.android.periscope;

import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import com.twitter.android.av.PeriscopeFullscreenChromeView;
import com.twitter.internal.android.widget.ToolBar;

/* compiled from: Twttr */
class n {
    private final PeriscopeFullscreenChromeView a;
    private final ToolBar b;
    private final ViewGroup c;
    private final View d;

    n(PeriscopeFullscreenChromeView periscopeFullscreenChromeView, ToolBar toolBar, ViewGroup viewGroup, View view) {
        this.a = periscopeFullscreenChromeView;
        this.b = toolBar;
        this.c = viewGroup;
        this.d = view;
    }

    public void a(Point point, Point point2, boolean z) {
        if (z) {
            int i = point.x - point2.x;
            int height = (point.y - point2.y) + this.c.getHeight();
            if (this.d.getVisibility() == 0) {
                height += this.d.getHeight();
            }
            this.a.a(i, height);
            this.a.a(this.b.getHeight());
            return;
        }
        this.a.a(0, 0);
        this.a.a(0);
    }
}
