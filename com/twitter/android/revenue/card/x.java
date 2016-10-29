package com.twitter.android.revenue.card;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;

/* compiled from: Twttr */
class x extends ab {
    final /* synthetic */ long a;
    final /* synthetic */ s b;

    x(s sVar, long j) {
        this.b = sVar;
        this.a = j;
    }

    public void a(View view, MotionEvent motionEvent) {
        this.b.a(this.a, NativeCardUserAction.a(this.b.e(), view, motionEvent, 0));
    }
}
