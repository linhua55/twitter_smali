package com.twitter.android.commerce.widget.form;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;

/* compiled from: Twttr */
public class OrderHistoryItemAttribute extends LinearLayout {
    public final View a;
    public final TextView b;
    public final TextView c;

    public OrderHistoryItemAttribute(Context context) {
        this(context, null);
    }

    public OrderHistoryItemAttribute(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(context, 2130968684, this);
        this.a = findViewById(2131952115);
        this.b = (TextView) findViewById(2131952112);
        this.c = (TextView) findViewById(2131952113);
        findViewById(2131952114).setVisibility(4);
    }
}
