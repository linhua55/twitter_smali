package com.google.android.gms.common.api;

import android.app.Activity;
import java.util.Map;
import java.util.WeakHashMap;

public abstract class ab {
    private static final Map<Activity, ab> a;
    private static final Object b;

    static {
        a = new WeakHashMap();
        b = new Object();
    }

    public abstract void a(int i);
}
