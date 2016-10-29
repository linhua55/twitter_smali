package com.twitter.android.settings;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.View;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class ListPreference extends android.preference.ListPreference {
    public ListPreference(Context context) {
        super(context);
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @TargetApi(21)
    public ListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @TargetApi(21)
    public ListPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void setValue(String str) {
        if (VERSION.SDK_INT >= 19) {
            super.setValue(str);
        } else if (!aj.a(getValue(), str)) {
            super.setValue(str);
            notifyChanged();
        }
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        MultilineTitlePreference.a(view);
    }
}
