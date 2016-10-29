package com.twitter.android.composer;

import android.content.Context;
import android.util.AttributeSet;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.t;

/* compiled from: Twttr */
public class ComposerCountView extends TypefacesTextView {
    public ComposerCountView(Context context) {
        this(context, null);
    }

    public ComposerCountView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public ComposerCountView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        setLocalizedNumberText(140);
    }

    public int a(int i) {
        int i2 = 140 - i;
        setLocalizedNumberText(i2);
        setTextColor(getResources().getColor(i2 >= 0 ? 2131886400 : 2131886285));
        return i2;
    }

    private void setLocalizedNumberText(int i) {
        setText(t.a(getResources(), (long) i, false));
    }
}
