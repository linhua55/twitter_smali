package com.twitter.internal.android.widget;

import android.widget.MultiAutoCompleteTextView.Tokenizer;

/* compiled from: Twttr */
final class ab implements Tokenizer {
    ab() {
    }

    public int findTokenStart(CharSequence charSequence, int i) {
        return 0;
    }

    public int findTokenEnd(CharSequence charSequence, int i) {
        return 0;
    }

    public CharSequence terminateToken(CharSequence charSequence) {
        return charSequence;
    }
}
