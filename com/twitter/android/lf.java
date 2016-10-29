package com.twitter.android;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources.NotFoundException;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.annotation.IntRange;
import android.support.v4.app.FragmentActivity;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import defpackage.cwj;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;

/* compiled from: Twttr */
public class lf {
    private static lf a;

    public static synchronized lf a() {
        lf lfVar;
        synchronized (lf.class) {
            if (a == null) {
                if (cwj.b()) {
                    lfVar = new lf();
                } else {
                    a = new lf();
                }
            }
            lfVar = a;
        }
        return lfVar;
    }

    public boolean b() {
        return VERSION.SDK_INT >= 23;
    }

    @TargetApi(23)
    public boolean a(Activity activity, String... strArr) {
        if (!b()) {
            return false;
        }
        for (String shouldShowRequestPermissionRationale : strArr) {
            if (activity.shouldShowRequestPermissionRationale(shouldShowRequestPermissionRationale)) {
                return true;
            }
        }
        return false;
    }

    @TargetApi(23)
    public boolean a(Context context, String... strArr) {
        if (!b()) {
            return true;
        }
        for (String checkSelfPermission : strArr) {
            if (context.checkSelfPermission(checkSelfPermission) != 0) {
                return false;
            }
        }
        return true;
    }

    public Set<String> b(Context context, String[] strArr) {
        Set<String> hashSet = new HashSet(strArr.length);
        PackageManager packageManager = context.getPackageManager();
        for (Object obj : strArr) {
            Object obj2;
            try {
                int i = packageManager.getPermissionGroupInfo(packageManager.getPermissionInfo(obj2, ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT).group, ItemAnimator.FLAG_APPEARED_IN_PRE_LAYOUT).labelRes;
                if (i != 0) {
                    try {
                        obj2 = context.getResources().getString(i);
                    } catch (NotFoundException e) {
                    }
                }
            } catch (NameNotFoundException e2) {
            }
            hashSet.add(obj2);
        }
        return hashSet;
    }

    @TargetApi(23)
    public void a(@IntRange(from = 0, to = 65535) int i, Activity activity, String... strArr) {
        if (b()) {
            String[] strArr2 = c(activity, strArr)[1];
            if (strArr2.length == 0) {
                b(i, activity, strArr);
                return;
            } else {
                activity.requestPermissions(strArr2, i);
                return;
            }
        }
        b(i, activity, strArr);
    }

    public boolean a(String str, String[] strArr, int[] iArr) {
        int i = 0;
        while (i < strArr.length) {
            if (!str.equals(strArr[i])) {
                i++;
            } else if (iArr[i] == 0) {
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    @TargetApi(23)
    public String[][] c(Context context, String[] strArr) {
        String[] strArr2;
        String[] strArr3;
        if (b()) {
            String[] strArr4 = new String[strArr.length];
            String[] strArr5 = new String[strArr.length];
            int i = 0;
            int i2 = 0;
            for (String str : strArr) {
                int i3;
                if (context.checkSelfPermission(str) != 0) {
                    i3 = i + 1;
                    strArr5[i] = str;
                    i = i3;
                } else {
                    i3 = i2 + 1;
                    strArr4[i2] = str;
                    i2 = i3;
                }
            }
            strArr2 = (String[]) Arrays.copyOfRange(strArr4, 0, i2);
            strArr3 = (String[]) Arrays.copyOfRange(strArr5, 0, i);
        } else {
            strArr2 = (String[]) Arrays.copyOf(strArr, strArr.length);
            strArr3 = new String[0];
        }
        return new String[][]{strArr2, strArr3};
    }

    public Intent a(Context context) {
        return new Intent().setAction("android.settings.APPLICATION_DETAILS_SETTINGS").setData(Uri.fromParts("package", context.getPackageName(), null));
    }

    @TargetApi(23)
    private static void b(int i, Activity activity, String[] strArr) {
        int[] iArr = new int[strArr.length];
        Arrays.fill(iArr, 0);
        if (activity instanceof FragmentActivity) {
            ((FragmentActivity) activity).onRequestPermissionsResult(i, strArr, iArr);
        } else if (activity instanceof ld) {
            ((ld) activity).onRequestPermissionsResult(i, strArr, iArr);
        } else {
            throw new IllegalStateException("activity should support permission results");
        }
    }
}
