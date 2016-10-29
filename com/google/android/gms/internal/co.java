package com.google.android.gms.internal;

import android.text.TextUtils;

@oi
public class co {
    public cm a(cl clVar) {
        if (clVar == null) {
            throw new IllegalArgumentException("CSI configuration can't be null. ");
        } else if (!clVar.a()) {
            qd.e("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
            return null;
        } else if (clVar.c() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        } else if (!TextUtils.isEmpty(clVar.d())) {
            return new cm(clVar.c(), clVar.d(), clVar.b(), clVar.e());
        } else {
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
    }
}
