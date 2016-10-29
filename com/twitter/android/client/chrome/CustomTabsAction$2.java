package com.twitter.android.client.chrome;

import android.content.Context;
import android.content.Intent;
import com.twitter.android.dm.m;
import com.twitter.android.dm.r;

/* compiled from: Twttr */
enum CustomTabsAction$2 extends CustomTabsAction {
    CustomTabsAction$2(String str, int i, String str2, int i2) {
        super(str, i, str2, i2, null);
    }

    protected Intent b(Context context, String str) {
        return r.a(context, ((m) ((m) new m().a("\n" + str)).d(true).a(true)).d()).addFlags(268435456);
    }
}
