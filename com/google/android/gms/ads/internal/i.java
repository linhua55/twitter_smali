package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class i implements OnTouchListener {
    final /* synthetic */ l a;
    final /* synthetic */ h b;

    i(h hVar, l lVar) {
        this.b = hVar;
        this.a = lVar;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.a.a();
        return false;
    }
}
