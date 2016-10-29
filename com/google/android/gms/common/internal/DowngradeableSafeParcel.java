package com.google.android.gms.common.internal;

import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public abstract class DowngradeableSafeParcel implements SafeParcelable {
    private static final Object a;
    private static ClassLoader b;
    private static Integer c;
    private boolean d;

    static {
        a = new Object();
        b = null;
        c = null;
    }

    public DowngradeableSafeParcel() {
        this.d = false;
    }
}
