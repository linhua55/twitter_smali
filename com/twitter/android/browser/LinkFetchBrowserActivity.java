package com.twitter.android.browser;

import android.view.Window;

/* compiled from: Twttr */
public class LinkFetchBrowserActivity extends BrowserActivity {
    public void a(Window window) {
        window.addFlags(32);
        window.setType(2002);
        window.setFormat(-3);
        window.setLayout(-2, -2);
        window.setGravity(87);
    }

    protected a a(h hVar) {
        return new j(this, hVar, false);
    }
}
