package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.we;

public class b extends a<Boolean> {
    public static Boolean a(SharedPreferences sharedPreferences, String str, Boolean bool) {
        return (Boolean) we.a(new c(sharedPreferences, str, bool));
    }
}
