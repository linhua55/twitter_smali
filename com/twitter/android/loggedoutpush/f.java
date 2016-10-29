package com.twitter.android.loggedoutpush;

import android.content.Context;
import android.preference.PreferenceManager;
import com.twitter.library.client.Session;
import com.twitter.library.client.ad;

/* compiled from: Twttr */
public class f extends ad {
    private final Context a;

    public f(Context context) {
        this.a = context;
    }

    public void b(Session session, boolean z) {
        LoggedoutPushService.b(this.a);
        LoggedoutPushService.c(this.a);
    }

    public void a(Session session, boolean z) {
        if (z) {
            new e(PreferenceManager.getDefaultSharedPreferences(this.a)).g();
            LoggedoutPushService.a(this.a);
            LoggedoutPushService.d(this.a);
        }
    }
}
