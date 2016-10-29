package com.twitter.android.dm.cards.dmfeedbackcard;

import android.text.Editable;
import com.twitter.util.ui.e;

/* compiled from: Twttr */
class f extends e {
    final /* synthetic */ FeedbackEnterCommentActivity a;

    f(FeedbackEnterCommentActivity feedbackEnterCommentActivity) {
        this.a = feedbackEnterCommentActivity;
    }

    public void afterTextChanged(Editable editable) {
        this.a.a.setEnabled(this.a.j());
    }
}
