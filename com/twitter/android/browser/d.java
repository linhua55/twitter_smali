package com.twitter.android.browser;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.twitter.library.api.PromotedEvent;

/* compiled from: Twttr */
class d implements OnTouchListener {
    final /* synthetic */ a a;

    d(a aVar) {
        this.a = aVar;
    }

    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() == 2) {
            a.d(this.a).a(PromotedEvent.ap);
            a.d(this.a).a("scroll");
            this.a.d.setOnTouchListener(null);
        }
        return false;
    }
}
