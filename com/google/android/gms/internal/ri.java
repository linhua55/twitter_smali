package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

@TargetApi(19)
public class ri extends rg {
    public boolean a(View view) {
        return view.isAttachedToWindow();
    }

    public LayoutParams d() {
        return new LayoutParams(-1, -1);
    }
}
