package com.twitter.android.client.chrome;

import android.content.Context;
import android.widget.Toast;
import com.twitter.library.util.aq;

/* compiled from: Twttr */
enum CustomTabsAction$3 extends CustomTabsAction {
    CustomTabsAction$3(String str, int i, String str2, int i2) {
        super(str, i, str2, i2, null);
    }

    protected void a(Context context, String str) {
        aq.a(context, str);
        Toast.makeText(context, 2131362329, 1).show();
    }
}
