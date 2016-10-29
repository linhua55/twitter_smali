package com.twitter.android.revenue.card;

import android.view.MotionEvent;
import android.view.View;
import com.twitter.library.scribe.NativeCardUserAction;
import com.twitter.library.util.ab;

/* compiled from: Twttr */
class w extends ab {
    final /* synthetic */ String a;
    final /* synthetic */ s b;

    w(s sVar, String str) {
        this.b = sVar;
        this.a = str;
    }

    public void a(View view, MotionEvent motionEvent) {
        this.b.v.a(this.a, NativeCardUserAction.a(this.b.e(), view, motionEvent, 0));
    }
}
