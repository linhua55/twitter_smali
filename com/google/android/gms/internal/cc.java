package com.google.android.gms.internal;

import android.content.SharedPreferences;

final class cc extends ca<Integer> {
    cc(int i, String str, Integer num) {
        super(i, str, num, null);
    }

    public /* synthetic */ Object a(SharedPreferences sharedPreferences) {
        return b(sharedPreferences);
    }

    public Integer b(SharedPreferences sharedPreferences) {
        return Integer.valueOf(sharedPreferences.getInt(a(), ((Integer) b()).intValue()));
    }
}
