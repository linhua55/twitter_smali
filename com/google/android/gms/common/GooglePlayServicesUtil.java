package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat;
import android.support.v4.app.NotificationCompatExtras;
import android.util.TypedValue;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.y;
import com.google.android.gms.common.internal.z;
import com.google.android.gms.internal.vm;
import com.google.android.gms.internal.vu;
import ib;
import ie;

public final class GooglePlayServicesUtil extends n {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";

    static {
        GOOGLE_PLAY_SERVICES_VERSION_CODE = n.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    private GooglePlayServicesUtil() {
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2) {
        return getErrorDialog(i, activity, i2, null);
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2, OnCancelListener onCancelListener) {
        return zza(i, activity, null, i2, onCancelListener);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return n.getErrorPendingIntent(i, context, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return n.getErrorString(i);
    }

    @Deprecated
    public static String getOpenSourceSoftwareLicenseInfo(Context context) {
        return n.getOpenSourceSoftwareLicenseInfo(context);
    }

    public static Context getRemoteContext(Context context) {
        return n.getRemoteContext(context);
    }

    public static Resources getRemoteResource(Context context) {
        return n.getRemoteResource(context);
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        return n.isGooglePlayServicesAvailable(context);
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        return n.isUserRecoverableError(i);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2) {
        return showErrorDialogFragment(i, activity, i2, null);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2, OnCancelListener onCancelListener) {
        return showErrorDialogFragment(i, activity, null, i2, onCancelListener);
    }

    public static boolean showErrorDialogFragment(int i, Activity activity, Fragment fragment, int i2, OnCancelListener onCancelListener) {
        Dialog zza = zza(i, activity, fragment, i2, onCancelListener);
        if (zza == null) {
            return false;
        }
        zza(activity, onCancelListener, GMS_ERROR_DIALOG, zza);
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int i, Context context) {
        if (vm.a(context) && i == 2) {
            i = 42;
        }
        if (zzd(context, i) || zze(context, i)) {
            zzam(context);
        } else {
            zza(i, context);
        }
    }

    @TargetApi(14)
    private static Dialog zza(int i, Activity activity, Fragment fragment, int i2, OnCancelListener onCancelListener) {
        Builder builder = null;
        if (i == 0) {
            return null;
        }
        if (vm.a(activity) && i == 2) {
            i = 42;
        }
        if (zzd(activity, i)) {
            i = 18;
        }
        if (vu.c()) {
            TypedValue typedValue = new TypedValue();
            activity.getTheme().resolveAttribute(16843529, typedValue, true);
            if ("Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId))) {
                builder = new Builder(activity, 5);
            }
        }
        if (builder == null) {
            builder = new Builder(activity);
        }
        builder.setMessage(y.a(activity, i, n.zzao(activity)));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Intent a = b.a().a((Context) activity, i, "d");
        OnClickListener zVar = fragment == null ? new z(activity, a, i2) : new z(fragment, a, i2);
        CharSequence b = y.b(activity, i);
        if (b != null) {
            builder.setPositiveButton(b, zVar);
        }
        CharSequence a2 = y.a(activity, i);
        if (a2 != null) {
            builder.setTitle(a2);
        }
        return builder.create();
    }

    @TargetApi(21)
    private static void zza(int i, Context context) {
        zza(i, context, null);
    }

    @TargetApi(21)
    private static void zza(int i, Context context, String str) {
        Notification build;
        int i2;
        Resources resources = context.getResources();
        String zzao = n.zzao(context);
        CharSequence a = y.a(context, i);
        if (a == null) {
            a = resources.getString(ie.common_google_play_services_notification_ticker);
        }
        CharSequence a2 = y.a(context, i, zzao);
        PendingIntent a3 = b.a().a(context, i, GOOGLE_PLAY_SERVICES_VERSION_CODE, "n");
        if (vm.a(context)) {
            bm.a(vu.d());
            build = new Notification.Builder(context).setSmallIcon(ib.common_ic_googleplayservices).setPriority(2).setAutoCancel(true).setStyle(new BigTextStyle().bigText(a + " " + a2)).addAction(ib.common_full_open_on_phone, resources.getString(ie.common_open_on_phone), a3).build();
        } else {
            CharSequence string = resources.getString(ie.common_google_play_services_notification_ticker);
            if (vu.a()) {
                Notification build2;
                Notification.Builder autoCancel = new Notification.Builder(context).setSmallIcon(17301642).setContentTitle(a).setContentText(a2).setContentIntent(a3).setTicker(string).setAutoCancel(true);
                if (vu.h()) {
                    autoCancel.setLocalOnly(true);
                }
                if (vu.d()) {
                    autoCancel.setStyle(new BigTextStyle().bigText(a2));
                    build2 = autoCancel.build();
                } else {
                    build2 = autoCancel.getNotification();
                }
                if (VERSION.SDK_INT == 19) {
                    build2.extras.putBoolean(NotificationCompatExtras.EXTRA_LOCAL_ONLY, true);
                }
                build = build2;
            } else {
                build = new NotificationCompat.Builder(context).setSmallIcon(17301642).setTicker(string).setWhen(System.currentTimeMillis()).setAutoCancel(true).setContentIntent(a3).setContentTitle(a).setContentText(a2).build();
            }
        }
        if (n.zzbw(i)) {
            zzafQ.set(false);
            i2 = 10436;
        } else {
            i2 = 39789;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (str != null) {
            notificationManager.notify(str, i2, build);
        } else {
            notificationManager.notify(i2, build);
        }
    }

    @TargetApi(11)
    public static void zza(Activity activity, OnCancelListener onCancelListener, String str, @NonNull Dialog dialog) {
        boolean z;
        try {
            z = activity instanceof FragmentActivity;
        } catch (NoClassDefFoundError e) {
            z = false;
        }
        if (z) {
            SupportErrorDialogFragment.a(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
        } else if (vu.a()) {
            a.a(dialog, onCancelListener).show(activity.getFragmentManager(), str);
        } else {
            throw new RuntimeException("This Activity does not support Fragments.");
        }
    }

    private static void zzam(Context context) {
        c cVar = new c(context);
        cVar.sendMessageDelayed(cVar.obtainMessage(1), 120000);
    }

    @Deprecated
    public static Intent zzbv(int i) {
        return n.zzbv(i);
    }

    @Deprecated
    public static boolean zzd(Context context, int i) {
        return n.zzd(context, i);
    }

    @Deprecated
    public static boolean zze(Context context, int i) {
        return n.zze(context, i);
    }
}
