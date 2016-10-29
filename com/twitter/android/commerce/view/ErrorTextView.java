package com.twitter.android.commerce.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

/* compiled from: Twttr */
public class ErrorTextView extends TextView {
    public ErrorTextView(Context context) {
        super(context);
    }

    public ErrorTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void setError(CharSequence charSequence) {
        setVisibility(charSequence == null ? 8 : 0);
        setText(charSequence);
    }

    public CharSequence getError() {
        return super.getText();
    }
}
