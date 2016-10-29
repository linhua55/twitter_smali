package com.twitter.android.client.chrome;

import android.content.Context;
import com.twitter.library.util.aq;

/* compiled from: Twttr */
enum CustomTabsAction$4 extends CustomTabsAction {
    CustomTabsAction$4(String str, int i, String str2, int i2) {
        super(str, i, str2, i2, null);
    }

    protected void a(Context context, String str) {
        aq.a(context, str, true);
    }
}
