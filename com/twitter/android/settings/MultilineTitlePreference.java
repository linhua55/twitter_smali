package com.twitter.android.settings;

import android.content.Context;
import android.preference.Preference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

/* compiled from: Twttr */
public class MultilineTitlePreference extends Preference {
    public MultilineTitlePreference(Context context) {
        super(context);
    }

    public MultilineTitlePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public MultilineTitlePreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        a(view);
    }

    public static void a(View view) {
        View findViewById = view.findViewById(16908310);
        if (findViewById instanceof TextView) {
            ((TextView) findViewById).setSingleLine(false);
        }
    }
}
