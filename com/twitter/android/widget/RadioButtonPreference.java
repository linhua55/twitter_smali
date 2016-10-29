package com.twitter.android.widget;

import android.content.Context;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.RadioButton;

/* compiled from: Twttr */
public class RadioButtonPreference extends CheckBoxPreference {
    private boolean a;
    private final AccessibilityManager b;

    public RadioButtonPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.b = (AccessibilityManager) getContext().getSystemService("accessibility");
        setWidgetLayoutResource(2130969211);
    }

    public RadioButtonPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RadioButtonPreference(Context context) {
        this(context, null);
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        RadioButton radioButton = (RadioButton) view.findViewById(2131953095);
        radioButton.setChecked(isChecked());
        if (this.a && this.b.isEnabled() && radioButton.isEnabled()) {
            this.a = false;
            radioButton.sendAccessibilityEventUnchecked(AccessibilityEvent.obtain(1));
        }
    }

    protected void onClick() {
        this.a = true;
        if (!isChecked()) {
            super.onClick();
        }
    }
}
