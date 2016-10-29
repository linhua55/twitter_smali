package com.twitter.android.revenue.card;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;

/* compiled from: Twttr */
class v extends ab {
    final /* synthetic */ s a;

    v(s sVar) {
        this.a = sVar;
    }

    public void a(View view, MotionEvent motionEvent) {
        this.a.v.a(this.a.w, NativeCardUserAction.a(this.a.e(), view, motionEvent, 0));
    }
}
