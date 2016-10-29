package com.google.android.gms.common;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ar;
import com.twitter.android.mx;
import tv.periscope.chatman.api.WireMessage;

public class f {
    private static final f a;
    public static final int b;

    static {
        b = n.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        a = new f();
    }

    f() {
    }

    public static f b() {
        return a;
    }

    private String b(@Nullable Context context, @Nullable String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("gcore_");
        stringBuilder.append(b);
        stringBuilder.append("-");
        if (!TextUtils.isEmpty(str)) {
            stringBuilder.append(str);
        }
        stringBuilder.append("-");
        if (context != null) {
            stringBuilder.append(context.getPackageName());
        }
        stringBuilder.append("-");
        if (context != null) {
            try {
                stringBuilder.append(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
            } catch (NameNotFoundException e) {
            }
        }
        return stringBuilder.toString();
    }

    public int a(Context context) {
        int isGooglePlayServicesAvailable = n.isGooglePlayServicesAvailable(context);
        return n.zzd(context, isGooglePlayServicesAvailable) ? 18 : isGooglePlayServicesAvailable;
    }

    @Nullable
    public PendingIntent a(Context context, int i, int i2) {
        return a(context, i, i2, null);
    }

    @Nullable
    public PendingIntent a(Context context, int i, int i2, @Nullable String str) {
        Intent a = a(context, i, str);
        return a == null ? null : PendingIntent.getActivity(context, i2, a, 268435456);
    }

    @Nullable
    public Intent a(Context context, int i, @Nullable String str) {
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
            case WireMessage.WIRE_CONTROL /*2*/:
                return ar.a(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, b(context, str));
            case WireMessage.WIRE_AUTH /*3*/:
                return ar.a(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
            case mx.AppCompatTheme_dialogTheme /*42*/:
                return ar.a();
            default:
                return null;
        }
    }

    public boolean a(int i) {
        return n.isUserRecoverableError(i);
    }

    public boolean a(Context context, int i) {
        return n.zzd(context, i);
    }

    public boolean a(Context context, String str) {
        return n.zzi(context, str);
    }

    public int b(Context context) {
        return n.zzaj(context);
    }

    @Nullable
    @Deprecated
    public Intent b(int i) {
        return a(null, i, null);
    }

    public void c(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        n.zzad(context);
    }

    public void d(Context context) {
        n.zzal(context);
    }
}
