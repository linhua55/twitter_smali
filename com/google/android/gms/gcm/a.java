package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.bm;
import java.util.List;

public class a {
    private static a a;
    private Context b;
    private final PendingIntent c;

    private a(Context context) {
        this.b = context;
        this.c = PendingIntent.getBroadcast(this.b, 0, new Intent(), 0);
    }

    private Intent a() {
        int c = c.c(this.b);
        if (c < c.a) {
            Log.e("GcmNetworkManager", "Google Play Services is not available, dropping GcmNetworkManager request. code=" + c);
            return null;
        }
        Intent intent = new Intent("com.google.android.gms.gcm.ACTION_SCHEDULE");
        intent.setPackage(c.b(this.b));
        intent.putExtra("app", this.c);
        return intent;
    }

    public static a a(Context context) {
        a aVar;
        synchronized (a.class) {
            if (a == null) {
                a = new a(context.getApplicationContext());
            }
            aVar = a;
        }
        return aVar;
    }

    static void a(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Must provide a valid tag.");
        } else if (100 < str.length()) {
            throw new IllegalArgumentException("Tag is larger than max permissible tag length (100)");
        }
    }

    private void b(String str) {
        boolean z = true;
        bm.a(str, "GcmTaskService must not be null.");
        Intent intent = new Intent("com.google.android.gms.gcm.ACTION_TASK_READY");
        intent.setPackage(this.b.getPackageName());
        List<ResolveInfo> queryIntentServices = this.b.getPackageManager().queryIntentServices(intent, 0);
        boolean z2 = (queryIntentServices == null || queryIntentServices.size() == 0) ? false : true;
        bm.b(z2, "There is no GcmTaskService component registered within this package. Have you extended GcmTaskService correctly?");
        for (ResolveInfo resolveInfo : queryIntentServices) {
            if (resolveInfo.serviceInfo.name.equals(str)) {
                break;
            }
        }
        z = false;
        bm.b(z, "The GcmTaskService class you provided " + str + " does not seem to support receiving" + " com.google.android.gms.gcm.ACTION_TASK_READY.");
    }

    public void a(Task task) {
        b(task.c());
        Intent a = a();
        if (a != null) {
            Bundle extras = a.getExtras();
            extras.putString("scheduler_action", "SCHEDULE_TASK");
            task.a(extras);
            a.putExtras(extras);
            this.b.sendBroadcast(a);
        }
    }

    public void a(String str, Class<? extends GcmTaskService> cls) {
        b(str, cls);
    }

    public void b(String str, Class<? extends Service> cls) {
        a(str);
        b(cls.getName());
        Intent a = a();
        if (a != null) {
            a.putExtra("scheduler_action", "CANCEL_TASK");
            a.putExtra("tag", str);
            a.putExtra("component", new ComponentName(this.b, cls));
            this.b.sendBroadcast(a);
        }
    }
}
