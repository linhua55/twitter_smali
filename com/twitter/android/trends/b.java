package com.twitter.android.trends;

import android.content.Context;
import android.content.Intent;
import com.twitter.internal.android.widget.ToolBar;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import defpackage.bex;

/* compiled from: Twttr */
public class b {
    public void a(int i, int i2, Intent intent, Session session, Context context, ToolBar toolBar, TrendsPlusFragment trendsPlusFragment) {
        if (a(i, i2, intent)) {
            long longExtra = intent.getLongExtra("woeid", 1);
            UserSettings j = session.j();
            if (a(j, longExtra)) {
                a(j, session, intent.getStringExtra("loc_name"), longExtra, context);
                a(toolBar, !j.B);
                if (trendsPlusFragment != null) {
                    trendsPlusFragment.S();
                }
            }
        }
    }

    boolean a(int i, int i2, Intent intent) {
        return i2 == -1 && i == 1 && intent != null && intent.hasExtra("woeid");
    }

    boolean a(UserSettings userSettings, long j) {
        return userSettings != null && (userSettings.B || userSettings.a != j);
    }

    void a(UserSettings userSettings, Session session, String str, long j, Context context) {
        userSettings.B = false;
        userSettings.a = j;
        userSettings.b = str;
        az.a(context).a(bex.a(context, session, userSettings, true, null));
    }

    void a(ToolBar toolBar, boolean z) {
        if (toolBar != null) {
            toolBar.a(2131953496).b(z);
        }
    }
}
