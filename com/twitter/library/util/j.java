package com.twitter.library.util;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import com.twitter.util.aj;
import cqf;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class j {
    private static j a;

    protected j() {
    }

    public static synchronized j a() {
        j jVar;
        synchronized (j.class) {
            if (a == null) {
                cqf.a(j.class);
                a = new j();
            }
            jVar = a;
        }
        return jVar;
    }

    public synchronized String a(Context context) {
        String str;
        CharSequence charSequence;
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.watfordfc.com"));
        ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
        if (resolveActivity != null) {
            charSequence = resolveActivity.activityInfo.packageName;
        } else {
            charSequence = null;
        }
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        List arrayList = new ArrayList();
        for (ResolveInfo resolveInfo : queryIntentActivities) {
            Intent intent2 = new Intent();
            intent2.setAction("android.support.customtabs.action.CustomTabsService");
            intent2.setPackage(resolveInfo.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) != null) {
                arrayList.add(resolveInfo.activityInfo.packageName);
            }
        }
        if (arrayList.size() == 1) {
            str = (String) arrayList.get(0);
        } else if (aj.b(charSequence) && arrayList.contains(charSequence)) {
            CharSequence charSequence2 = charSequence;
        } else {
            str = arrayList.contains("com.android.chrome") ? "com.android.chrome" : arrayList.contains("com.chrome.beta") ? "com.chrome.beta" : arrayList.contains("com.chrome.dev") ? "com.chrome.dev" : null;
        }
        return str;
    }
}
