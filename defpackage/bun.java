package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import bum;

/* compiled from: Twttr */
/* renamed from: bun */
class bun implements OnTouchListener {
    final /* synthetic */ View a;
    final /* synthetic */ bum b;

    bun(bum bum, View view) {
        this.b = bum;
        this.a = view;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z = bum.a(this.b, this.a, (int) motionEvent.getRawX(), (int) motionEvent.getRawY()) && this.a.dispatchTouchEvent(motionEvent);
        if (z && motionEvent.getActionMasked() == 1) {
            bum.a(this.b).e();
        }
        return z;
    }
}
