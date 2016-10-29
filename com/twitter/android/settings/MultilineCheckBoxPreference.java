package com.twitter.android.settings;

import android.content.Context;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import android.view.View;

/* compiled from: Twttr */
public class MultilineCheckBoxPreference extends CheckBoxPreference {
    public MultilineCheckBoxPreference(Context context) {
        super(context);
    }

    public MultilineCheckBoxPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MultilineCheckBoxPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        MultilineTitlePreference.a(view);
    }
}
