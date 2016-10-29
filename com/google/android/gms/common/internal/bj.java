package com.google.android.gms.common.internal;

import java.util.Arrays;

public final class bj {
    public static int a(Object... objArr) {
        return Arrays.hashCode(objArr);
    }

    public static bl a(Object obj) {
        return new bl(null);
    }

    public static boolean a(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }
}
