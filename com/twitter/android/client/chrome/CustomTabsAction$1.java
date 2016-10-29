package com.twitter.android.client.chrome;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.composer.aw;

/* compiled from: Twttr */
enum CustomTabsAction$1 extends CustomTabsAction {
    CustomTabsAction$1(String str, int i, String str2, int i2) {
        super(str, i, str2, i2, null);
    }

    protected Intent b(Context context, String str) {
        return aw.a().a('\n' + str, null).a(context).setFlags(268435456);
    }
}
