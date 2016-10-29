package com.twitter.android.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.twitter.ui.widget.TwitterEditText;

/* compiled from: Twttr */
public class PeopleDiscoveryPreference extends DeepLinkPreference {
    public PeopleDiscoveryPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        TwitterEditText twitterEditText = (TwitterEditText) view.findViewById(2131952310);
        this.a.setText("twitter://connect_people?display_location=debug");
        twitterEditText.setLabelText(null);
        int length = this.a.getText().length();
        this.a.setSelection(length, length);
    }
}
