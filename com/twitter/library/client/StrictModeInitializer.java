package com.twitter.library.client;

import android.content.Context;
import android.os.StrictMode.ThreadPolicy.Builder;
import android.os.StrictMode.VmPolicy;
import com.twitter.config.AppConfig;
import com.twitter.util.ai;
import defpackage.aof;

/* compiled from: Twttr */
public class StrictModeInitializer extends aof<Void> {
    protected /* synthetic */ void a(Context context, Object obj) {
        b(context, (Void) obj);
    }

    protected /* synthetic */ boolean b(Context context, Object obj) {
        return a(context, (Void) obj);
    }

    protected boolean a(Context context, Void voidR) {
        return AppConfig.m().a();
    }

    protected void b(Context context, Void voidR) {
        ai.a(new Builder().detectCustomSlowCalls().detectNetwork().penaltyDeath().penaltyLog().build());
        ai.a(true);
        ai.a(new VmPolicy.Builder().detectLeakedClosableObjects().detectLeakedSqlLiteObjects().penaltyDeath().penaltyLog().build());
        ai.b(true);
    }
}
