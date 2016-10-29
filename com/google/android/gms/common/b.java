package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.support.annotation.Nullable;
import android.support.v7.recyclerview.BuildConfig;
import android.view.View;
import android.widget.ProgressBar;
import ie;

public class b extends f {
    public static final int a;
    private static final b c;

    static {
        c = new b();
        a = f.b;
    }

    b() {
    }

    public static b a() {
        return c;
    }

    public int a(Context context) {
        return super.a(context);
    }

    public Dialog a(Activity activity, OnCancelListener onCancelListener) {
        View progressBar = new ProgressBar(activity, null, 16842874);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        Builder builder = new Builder(activity);
        builder.setView(progressBar);
        String zzao = n.zzao(activity);
        builder.setMessage(activity.getResources().getString(ie.common_google_play_services_updating_text, new Object[]{zzao}));
        builder.setTitle(ie.common_google_play_services_updating_title);
        builder.setPositiveButton(BuildConfig.VERSION_NAME, null);
        Dialog create = builder.create();
        GooglePlayServicesUtil.zza(activity, onCancelListener, "GooglePlayServicesUpdatingDialog", create);
        return create;
    }

    @Nullable
    public PendingIntent a(Context context, int i, int i2) {
        return super.a(context, i, i2);
    }

    @Nullable
    public PendingIntent a(Context context, int i, int i2, @Nullable String str) {
        return super.a(context, i, i2, str);
    }

    @Nullable
    public Intent a(Context context, int i, @Nullable String str) {
        return super.a(context, i, str);
    }

    public final boolean a(int i) {
        return super.a(i);
    }

    public boolean a(Activity activity, int i, int i2) {
        return GooglePlayServicesUtil.showErrorDialogFragment(i, activity, i2);
    }

    public boolean a(Context context, int i) {
        return super.a(context, i);
    }

    public int b(Context context) {
        return super.b(context);
    }

    @Nullable
    @Deprecated
    public Intent b(int i) {
        return super.b(i);
    }
}
