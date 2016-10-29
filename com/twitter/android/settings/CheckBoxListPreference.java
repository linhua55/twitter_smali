package com.twitter.android.settings;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CheckBox;
import com.twitter.android.mx;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class CheckBoxListPreference extends ListPreference {
    private final String a;

    public CheckBoxListPreference(Context context) {
        this(context, null);
    }

    public CheckBoxListPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.CheckBoxListPreference);
        this.a = obtainStyledAttributes.getString(0);
        obtainStyledAttributes.recycle();
        setWidgetLayoutResource(2130969210);
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        if (this.a != null) {
            ((CheckBox) view.findViewById(k.checkbox)).setChecked(!this.a.equals(getValue()));
        }
    }
}
