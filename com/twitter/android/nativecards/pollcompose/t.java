package com.twitter.android.nativecards.pollcompose;

import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

/* compiled from: Twttr */
class t implements OnEditorActionListener {
    final /* synthetic */ EditText a;
    final /* synthetic */ PollComposeView b;

    t(PollComposeView pollComposeView, EditText editText) {
        this.b = pollComposeView;
        this.a = editText;
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            this.a.clearFocus();
        }
        return false;
    }
}
