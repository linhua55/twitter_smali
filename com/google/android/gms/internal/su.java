package com.google.android.gms.internal;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;

@oi
public class su {
    public static void a(View view, OnGlobalLayoutListener onGlobalLayoutListener) {
        new sv(view, onGlobalLayoutListener).a();
    }

    public static void a(View view, OnScrollChangedListener onScrollChangedListener) {
        new sw(view, onScrollChangedListener).a();
    }
}
