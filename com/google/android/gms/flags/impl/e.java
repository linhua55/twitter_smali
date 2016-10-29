package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

final class e implements Callable<Integer> {
    final /* synthetic */ SharedPreferences a;
    final /* synthetic */ String b;
    final /* synthetic */ Integer c;

    e(SharedPreferences sharedPreferences, String str, Integer num) {
        this.a = sharedPreferences;
        this.b = str;
        this.c = num;
    }

    public Integer a() {
        return Integer.valueOf(this.a.getInt(this.b, this.c.intValue()));
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }
}
