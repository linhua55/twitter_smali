package com.google.android.gms.internal;

import android.content.SharedPreferences;

final class cb extends ca<Boolean> {
    cb(int i, String str, Boolean bool) {
        super(i, str, bool, null);
    }

    public /* synthetic */ Object a(SharedPreferences sharedPreferences) {
        return b(sharedPreferences);
    }

    public Boolean b(SharedPreferences sharedPreferences) {
        return Boolean.valueOf(sharedPreferences.getBoolean(a(), ((Boolean) b()).booleanValue()));
    }
}
