package com.twitter.android.revenue.card;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;

/* compiled from: Twttr */
class ar extends ab {
    final /* synthetic */ aq a;

    ar(aq aqVar) {
        this.a = aqVar;
    }

    public void a(View view, MotionEvent motionEvent) {
        this.a.n.a(this.a.e, this.a.f, this.a.g, NativeCardUserAction.a(this.a.e(), view, motionEvent, 0));
    }
}
