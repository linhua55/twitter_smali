package com.google.android.gms.internal;

import android.support.annotation.Nullable;

@oi
public class cp {
    @Nullable
    public static cu a(@Nullable cy cyVar) {
        return cyVar == null ? null : cyVar.a();
    }

    @Nullable
    public static cu a(@Nullable cy cyVar, long j) {
        return cyVar == null ? null : cyVar.a(j);
    }

    public static boolean a(@Nullable cy cyVar, @Nullable cu cuVar, long j, String... strArr) {
        return (cyVar == null || cuVar == null) ? false : cyVar.a(cuVar, j, strArr);
    }

    public static boolean a(@Nullable cy cyVar, @Nullable cu cuVar, String... strArr) {
        return (cyVar == null || cuVar == null) ? false : cyVar.a(cuVar, strArr);
    }
}
