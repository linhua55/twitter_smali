package com.twitter.ui.widget;

/* compiled from: Twttr */
class ac implements Runnable {
    final /* synthetic */ Tooltip a;

    ac(Tooltip tooltip) {
        this.a = tooltip;
    }

    public void run() {
        this.a.a();
        if (this.a.l != null) {
            this.a.l.a(this.a, 2);
        }
    }
}
