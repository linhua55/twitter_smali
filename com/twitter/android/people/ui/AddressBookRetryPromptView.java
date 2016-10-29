package com.twitter.android.people.ui;

import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import com.twitter.ui.widget.PromptView;
import defpackage.bcu;

/* compiled from: Twttr */
public class AddressBookRetryPromptView extends PromptView {
    public AddressBookRetryPromptView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AddressBookRetryPromptView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        Context context = getContext();
        getInnerContainer().setBackgroundColor(ContextCompat.getColor(context, bcu.app_background));
        getPromptHeader().setTextColor(ContextCompat.getColor(context, 2131886332));
        setTitle(2131361874);
        setSubtitle(null);
        getPromptButton().setButtonAppearance(2131559367);
        setButtonText(2131363170);
        getDismissButton().setVisibility(8);
    }
}
