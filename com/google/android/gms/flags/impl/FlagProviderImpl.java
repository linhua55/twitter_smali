package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.dynamic.j;
import com.google.android.gms.dynamic.m;
import com.google.android.gms.internal.wc;

public class FlagProviderImpl extends wc {
    private boolean a;
    private SharedPreferences b;

    public FlagProviderImpl() {
        this.a = false;
    }

    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        return b.a(this.b, str, Boolean.valueOf(z)).booleanValue();
    }

    public int getIntFlagValue(String str, int i, int i2) {
        return d.a(this.b, str, Integer.valueOf(i)).intValue();
    }

    public long getLongFlagValue(String str, long j, int i) {
        return f.a(this.b, str, Long.valueOf(j)).longValue();
    }

    public String getStringFlagValue(String str, String str2, int i) {
        return h.a(this.b, str, str2);
    }

    public void init(j jVar) {
        Context context = (Context) m.a(jVar);
        if (!this.a) {
            try {
                this.b = j.a(context.createPackageContext("com.google.android.gms", 0));
                this.a = true;
            } catch (NameNotFoundException e) {
            }
        }
    }
}
