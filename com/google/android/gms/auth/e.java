package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.d;
import com.google.android.gms.common.internal.am;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.n;
import java.io.IOException;

public class e {
    private static final ComponentName a;
    private static final ComponentName b;
    public static final String c;
    public static final String d;

    static {
        c = VERSION.SDK_INT >= 11 ? "callerUid" : "callerUid";
        d = VERSION.SDK_INT >= 14 ? "androidPackageName" : "androidPackageName";
        a = new ComponentName(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, "com.google.android.gms.auth.GetToken");
        b = new ComponentName(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, "com.google.android.gms.recovery.RecoveryService");
    }

    private static <T> T a(Context context, ComponentName componentName, g<T> gVar) throws IOException, GoogleAuthException {
        Throwable e;
        d dVar = new d();
        am a = am.a(context);
        if (a.a(componentName, dVar, "GoogleAuthUtil")) {
            try {
                T b = gVar.b(dVar.a());
                a.b(componentName, dVar, "GoogleAuthUtil");
                return b;
            } catch (RemoteException e2) {
                e = e2;
                try {
                    Log.i("GoogleAuthUtil", "Error on service connection.", e);
                    throw new IOException("Error on service connection.", e);
                } catch (Throwable th) {
                    a.b(componentName, dVar, "GoogleAuthUtil");
                }
            } catch (InterruptedException e3) {
                e = e3;
                Log.i("GoogleAuthUtil", "Error on service connection.", e);
                throw new IOException("Error on service connection.", e);
            }
        }
        throw new IOException("Could not bind to service.");
    }

    public static String a(Context context, Account account, String str) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return a(context, account, str, new Bundle());
    }

    public static String a(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return b(context, account, str, bundle).a();
    }

    private static void a(Context context) throws GoogleAuthException {
        try {
            n.zzad(context.getApplicationContext());
        } catch (GooglePlayServicesRepairableException e) {
            throw new GooglePlayServicesAvailabilityException(e.a(), e.getMessage(), e.b());
        } catch (GooglePlayServicesNotAvailableException e2) {
            throw new GoogleAuthException(e2.getMessage());
        }
    }

    public static TokenData b(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        bm.c("Calling this from your main thread can lead to deadlock");
        a(context);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        String str2 = context.getApplicationInfo().packageName;
        bundle2.putString("clientPackageName", str2);
        if (TextUtils.isEmpty(bundle2.getString(d))) {
            bundle2.putString(d, str2);
        }
        bundle2.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
        return (TokenData) a(context, a, new f(account, str, bundle2));
    }

    private static <T> T b(T t) throws IOException {
        if (t != null) {
            return t;
        }
        Log.w("GoogleAuthUtil", "Binder call returned null.");
        throw new IOException("Service unavailable.");
    }

    @Deprecated
    public static String b(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return a(context, new Account(str, "com.google"), str2);
    }
}
