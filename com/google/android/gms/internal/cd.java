package com.google.android.gms.internal;

import android.content.SharedPreferences;

final class cd extends ca<Long> {
    cd(int i, String str, Long l) {
        super(i, str, l, null);
    }

    public /* synthetic */ Object a(SharedPreferences sharedPreferences) {
        return b(sharedPreferences);
    }

    public Long b(SharedPreferences sharedPreferences) {
        return Long.valueOf(sharedPreferences.getLong(a(), ((Long) b()).longValue()));
    }
}
