package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.CheckBoxPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.twitter.android.WebViewActivity;
import com.twitter.android.mx;
import com.twitter.library.util.aq;
import com.twitter.ui.view.p;

/* compiled from: Twttr */
public class UrlLinkableCheckboxPreference extends CheckBoxPreference {
    private int a;

    public UrlLinkableCheckboxPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.UrlLinkableCheckboxPreference, i, 0);
        this.a = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
    }

    public UrlLinkableCheckboxPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.UrlLinkableCheckboxPreference, 0, 0);
        this.a = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        if (this.a > 0) {
            TextView textView = (TextView) view.findViewById(16908304);
            Object[] objArr = new Object[]{aq.a(getContext(), this.a, 2131886265, WebViewActivity.class)};
            p.a(textView);
            textView.setText(aq.a(objArr, textView.getText().toString(), "{{}}"));
        }
    }
}
