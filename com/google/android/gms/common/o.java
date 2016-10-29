package com.google.android.gms.common;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Base64;
import android.util.Log;

public class o {
    private static final o a;

    static {
        a = new o();
    }

    private o() {
    }

    public static o a() {
        return a;
    }

    h a(PackageInfo packageInfo, h... hVarArr) {
        if (packageInfo.signatures.length != 1) {
            Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
            return null;
        }
        h iVar = new i(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < hVarArr.length; i++) {
            if (hVarArr[i].equals(iVar)) {
                return hVarArr[i];
            }
        }
        if (Log.isLoggable("GoogleSignatureVerifier", 2)) {
            Log.v("GoogleSignatureVerifier", "Signature not valid.  Found: \n" + Base64.encodeToString(iVar.a(), 0));
        }
        return null;
    }

    public boolean a(PackageInfo packageInfo, boolean z) {
        if (!(packageInfo == null || packageInfo.signatures == null)) {
            h a;
            if (z) {
                a = a(packageInfo, k.a);
            } else {
                a = a(packageInfo, k.a[0]);
            }
            if (a != null) {
                return true;
            }
        }
        return false;
    }

    public boolean a(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (n.zzc(packageManager)) {
            return a(packageInfo, true);
        }
        boolean a = a(packageInfo, false);
        if (a || !a(packageInfo, true)) {
            return a;
        }
        Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        return a;
    }
}
