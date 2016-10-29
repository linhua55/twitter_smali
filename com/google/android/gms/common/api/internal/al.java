package com.google.android.gms.common.api.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.support.annotation.Nullable;
import com.google.android.gms.common.f;

abstract class al extends BroadcastReceiver {
    protected Context c;

    al() {
    }

    @Nullable
    public static <T extends al> T a(Context context, T t) {
        return a(context, t, f.b());
    }

    @Nullable
    public static <T extends al> T a(Context context, T t, f fVar) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addDataScheme("package");
        context.registerReceiver(t, intentFilter);
        t.c = context;
        if (fVar.a(context, "com.google.android.gms")) {
            return t;
        }
        t.a();
        t.b();
        return null;
    }

    protected abstract void a();

    public synchronized void b() {
        if (this.c != null) {
            this.c.unregisterReceiver(this);
        }
        this.c = null;
    }

    public void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        Object obj = null;
        if (data != null) {
            obj = data.getSchemeSpecificPart();
        }
        if ("com.google.android.gms".equals(obj)) {
            a();
            b();
        }
    }
}
