package com.facebook.common.util;

import javax.annotation.Nullable;

/* compiled from: Twttr */
public class a {
    public static int a(@Nullable Object obj, @Nullable Object obj2, @Nullable Object obj3, @Nullable Object obj4, @Nullable Object obj5, @Nullable Object obj6) {
        int i = 0;
        int hashCode = obj == null ? 0 : obj.hashCode();
        int hashCode2 = obj2 == null ? 0 : obj2.hashCode();
        int hashCode3 = obj3 == null ? 0 : obj3.hashCode();
        int hashCode4 = obj4 == null ? 0 : obj4.hashCode();
        int hashCode5 = obj5 == null ? 0 : obj5.hashCode();
        if (obj6 != null) {
            i = obj6.hashCode();
        }
        return a(hashCode, hashCode2, hashCode3, hashCode4, hashCode5, i);
    }

    public static int a(int i, int i2) {
        return ((i + 31) * 31) + i2;
    }

    public static int a(int i, int i2, int i3, int i4, int i5, int i6) {
        return ((((((((((i + 31) * 31) + i2) * 31) + i3) * 31) + i4) * 31) + i5) * 31) + i6;
    }
}
