package com.twitter.library.network;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.config.AppConfig;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.x;
import defpackage.cun;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/* compiled from: Twttr */
public class ar {
    private final String a;

    public ar(Context context, PackageInfo packageInfo, String str, boolean z) {
        Closeable bufferedReader;
        String readLine;
        Throwable th;
        Closeable closeable = null;
        int i = 0;
        StringBuilder stringBuilder = new StringBuilder("TwitterAndroid");
        if (packageInfo != null) {
            ApplicationInfo applicationInfo;
            AppConfig m = AppConfig.m();
            stringBuilder.append('/').append(str).append(" (").append(packageInfo.versionCode).append('-');
            if (!m.p() || z) {
                stringBuilder.append("r-");
            } else if (m.b()) {
                stringBuilder.append(m.h()).append('-');
            } else if (m.a()) {
                stringBuilder.append("d-");
            }
            stringBuilder.append(m.i()).append(')');
            File file = new File("/system/vendor/twitter/preload");
            if (file.exists()) {
                try {
                    bufferedReader = new BufferedReader(new FileReader(file));
                    try {
                        readLine = bufferedReader.readLine();
                        i = 2;
                        cun.a(bufferedReader);
                    } catch (IOException e) {
                        cun.a(bufferedReader);
                        if (x.b(context)) {
                            i |= 8;
                            x.c(context);
                        }
                        applicationInfo = packageInfo.applicationInfo;
                        i |= 1;
                        stringBuilder.append(' ').append(Build.MODEL).append('/').append(VERSION.RELEASE).append(" (").append(Build.MANUFACTURER).append(';').append(Build.MODEL).append(';').append(Build.BRAND).append(';').append(Build.PRODUCT).append(';').append(i).append(';');
                        stringBuilder.append(readLine);
                        this.a = stringBuilder.toString();
                    } catch (Throwable th2) {
                        th = th2;
                        closeable = bufferedReader;
                        cun.a(closeable);
                        throw th;
                    }
                } catch (IOException e2) {
                    bufferedReader = closeable;
                    cun.a(bufferedReader);
                    if (x.b(context)) {
                        i |= 8;
                        x.c(context);
                    }
                    applicationInfo = packageInfo.applicationInfo;
                    i |= 1;
                    stringBuilder.append(' ').append(Build.MODEL).append('/').append(VERSION.RELEASE).append(" (").append(Build.MANUFACTURER).append(';').append(Build.MODEL).append(';').append(Build.BRAND).append(';').append(Build.PRODUCT).append(';').append(i).append(';');
                    stringBuilder.append(readLine);
                    this.a = stringBuilder.toString();
                } catch (Throwable th3) {
                    th = th3;
                    cun.a(closeable);
                    throw th;
                }
            }
            if (x.b(context)) {
                i |= 8;
                x.c(context);
            }
            applicationInfo = packageInfo.applicationInfo;
            if (!(applicationInfo == null || ((applicationInfo.flags & 1) == 0 && (applicationInfo.flags & AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS) == 0))) {
                i |= 1;
            }
        } else {
            stringBuilder.append("/3.0.0 (^_^)");
        }
        stringBuilder.append(' ').append(Build.MODEL).append('/').append(VERSION.RELEASE).append(" (").append(Build.MANUFACTURER).append(';').append(Build.MODEL).append(';').append(Build.BRAND).append(';').append(Build.PRODUCT).append(';').append(i).append(';');
        if (readLine != null && readLine.matches("[a-zA-Z0-9-]{10,30}")) {
            stringBuilder.append(readLine);
        }
        this.a = stringBuilder.toString();
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder(this.a);
        stringBuilder.append(";").append(TelephonyUtil.i().c() ? "1" : "0").append(")");
        return stringBuilder.toString();
    }
}
