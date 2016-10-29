package com.twitter.android.initialization;

import android.content.Context;
import com.twitter.android.loggedoutpush.LoggedoutPushService;
import com.twitter.library.client.bg;
import defpackage.aof;

/* compiled from: Twttr */
public class LoggedoutPushInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        if (!bg.a().c().d()) {
            LoggedoutPushService.a(context);
        }
    }
}
