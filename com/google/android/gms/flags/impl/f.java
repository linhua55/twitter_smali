package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.we;

public class f extends a<Long> {
    public static Long a(SharedPreferences sharedPreferences, String str, Long l) {
        return (Long) we.a(new g(sharedPreferences, str, l));
    }
}
