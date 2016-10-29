package com.twitter.android;

import com.twitter.android.widget.TextSwitcherView;

/* compiled from: Twttr */
public final class pd implements Runnable {
    private final TextSwitcherView a;

    public pd(TextSwitcherView textSwitcherView) {
        this.a = textSwitcherView;
    }

    public void run() {
        this.a.showNext();
    }
}
