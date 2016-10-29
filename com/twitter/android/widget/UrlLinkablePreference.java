package com.twitter.android.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.Preference;
import android.support.annotation.StringRes;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import com.twitter.android.WebViewActivity;
import com.twitter.android.mx;
import com.twitter.library.util.aq;
import com.twitter.ui.view.p;
import defpackage.bcu;

/* compiled from: Twttr */
public class UrlLinkablePreference extends Preference {
    @StringRes
    private int a;
    private View b;

    public UrlLinkablePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.UrlLinkablePreference, 0, 0);
        this.a = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
    }

    public UrlLinkablePreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.UrlLinkablePreference, i, 0);
        this.a = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
    }

    protected void onBindView(View view) {
        super.onBindView(view);
        this.b = view;
        a();
    }

    public void a(@StringRes int i) {
        this.a = i;
        a();
    }

    private void a() {
        if (this.b != null && this.a > 0) {
            a(this.b, this.a);
        }
    }

    void a(View view, @StringRes int i) {
        TextView textView = (TextView) view.findViewById(16908304);
        Object[] objArr = new Object[]{aq.a(getContext(), i, bcu.link_selected, WebViewActivity.class)};
        p.a(textView);
        textView.setText(aq.a(objArr, textView.getText().toString(), "{{}}"));
    }
}
