package com.google.android.gms.common.internal;

import java.util.Arrays;

final class o extends j {
    final /* synthetic */ char[] p;

    o(char[] cArr) {
        this.p = cArr;
    }

    public boolean b(char c) {
        return Arrays.binarySearch(this.p, c) >= 0;
    }
}
