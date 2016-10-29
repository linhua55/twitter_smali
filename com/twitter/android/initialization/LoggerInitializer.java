package com.twitter.android.initialization;

import android.content.Context;
import cfb;
import com.twitter.config.AppConfig;
import defpackage.aof;
import defpackage.cez;

/* compiled from: Twttr */
public class LoggerInitializer extends aof<Void> {
    protected /* synthetic */ void a(Context context, Object obj) {
        b(context, (Void) obj);
    }

    protected /* synthetic */ boolean b(Context context, Object obj) {
        return a(context, (Void) obj);
    }

    protected boolean a(Context context, Void voidR) {
        return AppConfig.m().j();
    }

    protected void b(Context context, Void voidR) {
        cfb.a(new cez());
    }
}
