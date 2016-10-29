package com.twitter.android.nativecards.pollcompose;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;
import defpackage.bct;

/* compiled from: Twttr */
public class PollChoiceEditText extends EditText {
    private static final int[] a;
    private boolean b;

    static {
        a = new int[]{bct.state_error};
    }

    public PollChoiceEditText(Context context) {
        this(context, null);
    }

    public PollChoiceEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PollChoiceEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (this.b) {
            mergeDrawableStates(onCreateDrawableState, a);
        }
        return onCreateDrawableState;
    }

    public void setIsInvalid(boolean z) {
        if (this.b != z) {
            this.b = z;
            refreshDrawableState();
        }
    }
}
