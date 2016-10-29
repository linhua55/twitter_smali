package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.w;
import java.util.Collections;
import java.util.List;

public abstract class g<T extends h, O> {
    public int a() {
        return Integer.MAX_VALUE;
    }

    public abstract T a(Context context, Looper looper, w wVar, O o, q qVar, r rVar);

    public List<Scope> a(O o) {
        return Collections.emptyList();
    }
}
