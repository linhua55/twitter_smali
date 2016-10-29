package com.twitter.android;

import com.twitter.internal.android.widget.DockLayout;
import com.twitter.refresh.widget.h;

/* compiled from: Twttr */
public class ei implements h {
    private final DockLayout a;

    public ei(DockLayout dockLayout) {
        this.a = dockLayout;
    }

    public void a() {
        this.a.setTopLocked(false);
    }

    public void a(boolean z) {
        this.a.setTopLocked(!z);
    }

    public void b() {
        this.a.setTopLocked(true);
    }
}
