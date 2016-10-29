package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;

@oi
public class cg {
    public SharedPreferences a(Context context) {
        return context.getSharedPreferences("google_ads_flags", 1);
    }
}
