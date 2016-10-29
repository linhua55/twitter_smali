package com.twitter.android.people.ui;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.view.View;
import com.twitter.ui.widget.PromptView;
import defpackage.bcu;

/* compiled from: Twttr */
public class AddressBookPromptView extends PromptView {
    private View a;

    public AddressBookPromptView(Context context) {
        super(context);
    }

    public AddressBookPromptView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AddressBookPromptView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        Context context = getContext();
        getInnerContainer().setBackgroundColor(ContextCompat.getColor(context, bcu.app_background));
        getPromptHeader().setTextColor(ContextCompat.getColor(context, 2131886332));
        getPromptSubtitle().setTextColor(ContextCompat.getColor(context, 2131886400));
        getPromptButton().setButtonAppearance(2131559367);
        getDismissButton().setColorFilter(ContextCompat.getColor(context, 2131886400));
    }

    protected float getAnimatingEndingHeight() {
        if (this.a != null) {
            return (float) this.a.getHeight();
        }
        return super.getAnimatingEndingHeight();
    }

    public void setEndView(View view) {
        this.a = view;
    }
}
