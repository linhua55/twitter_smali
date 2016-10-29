package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.we;

public class j {
    private static SharedPreferences a;

    static {
        a = null;
    }

    public static SharedPreferences a(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            if (a == null) {
                a = (SharedPreferences) we.a(new k(context));
            }
            sharedPreferences = a;
        }
        return sharedPreferences;
    }
}
