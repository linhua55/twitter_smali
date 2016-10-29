package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.we;

public class h extends a<String> {
    public static String a(SharedPreferences sharedPreferences, String str, String str2) {
        return (String) we.a(new i(sharedPreferences, str, str2));
    }
}
