package com.twitter.library.client;

import android.content.Context;
import android.os.Bundle;
import android.support.customtabs.CustomTabsCallback;
import cfb;

/* compiled from: Twttr */
public class al extends CustomTabsCallback {
    private final String a;
    private final Context b;
    private BrowserSession c;

    public al(String str, Context context) {
        this.a = str;
        this.b = context;
    }

    public void onNavigationEvent(int i, Bundle bundle) {
        if (this.c == null) {
            this.c = new BrowserSession(this.a, this.b);
            cfb.b("CustomTabs", "Navigation started for " + this.c.a);
        }
        this.c.a(i);
    }
}
