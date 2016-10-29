package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.rk;

@oi
final class k extends RelativeLayout {
    rk a;

    public k(Context context, String str) {
        super(context);
        this.a = new rk(context, str);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        this.a.a(motionEvent);
        return false;
    }
}
