package com.twitter.android;

import android.view.View;
import android.view.View.OnFocusChangeListener;

/* compiled from: Twttr */
class ir implements OnFocusChangeListener {
    final /* synthetic */ long a;
    final /* synthetic */ LoginActivity b;

    ir(LoginActivity loginActivity, long j) {
        this.b = loginActivity;
        this.a = j;
    }

    public void onFocusChange(View view, boolean z) {
        if (z) {
            iy.a(this.a, "login:::password:select");
        }
    }
}
