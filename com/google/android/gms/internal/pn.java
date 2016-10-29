package com.google.android.gms.internal;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import java.util.Map;

public class pn {
    public final int a;
    public final byte[] b;
    public final Map<String, String> c;
    public final boolean d;
    public final long e;

    public pn(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this.a = i;
        this.b = bArr;
        this.c = map;
        this.d = z;
        this.e = j;
    }

    public pn(byte[] bArr, Map<String, String> map) {
        this(Callback.DEFAULT_DRAG_ANIMATION_DURATION, bArr, map, false, 0);
    }
}
