package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import com.google.android.gms.internal.we;

public class d extends a<Integer> {
    public static Integer a(SharedPreferences sharedPreferences, String str, Integer num) {
        return (Integer) we.a(new e(sharedPreferences, str, num));
    }
}
