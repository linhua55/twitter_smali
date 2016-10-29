package com.twitter.android.revenue.card;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;

/* compiled from: Twttr */
class c extends ab {
    final /* synthetic */ b a;

    c(b bVar) {
        this.a = bVar;
    }

    public void a(View view, MotionEvent motionEvent) {
        this.a.n.a(this.a.d, this.a.e, this.a.f, NativeCardUserAction.a(this.a.e(), view, motionEvent, 0));
    }
}
