package com.twitter.android.revenue.card;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;

/* compiled from: Twttr */
class ag extends ab {
    final /* synthetic */ ac a;

    ag(ac acVar) {
        this.a = acVar;
    }

    public void a(View view, MotionEvent motionEvent) {
        this.a.v.a(this.a.E, NativeCardUserAction.a(this.a.e(), view, motionEvent, 0));
    }
}
