package com.twitter.android.commerce.widget.form;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/* compiled from: Twttr */
public class DescriptionHeader extends LinearLayout {
    public final View a;
    public final TextView b;
    public final ExpandableTextView c;

    public DescriptionHeader(Context context) {
        this(context, null);
    }

    public DescriptionHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, 2130968683, this);
        this.a = findViewById(2131952109);
        this.b = (TextView) findViewById(2131952110);
        this.c = (ExpandableTextView) findViewById(2131952111);
    }
}
