package com.twitter.android.nativecards.pollcompose;

import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.TextView;

/* compiled from: Twttr */
class s implements OnFocusChangeListener {
    final /* synthetic */ TextView a;
    final /* synthetic */ PollComposeView b;

    s(PollComposeView pollComposeView, TextView textView) {
        this.b = pollComposeView;
        this.a = textView;
    }

    public void onFocusChange(View view, boolean z) {
        TextView textView = this.a;
        int i = (z || this.a.getTag() == "choice_error") ? 0 : 4;
        textView.setVisibility(i);
    }
}
