package com.twitter.android.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.twitter.android.mx;
import defpackage.bcx;
import java.util.Locale;

/* compiled from: Twttr */
public class TweetStatView extends RelativeLayout {
    private final TextView a;
    private final TextView b;
    private final ColorStateList c;
    private final ColorStateList d;

    public TweetStatView(Context context) {
        this(context, null);
    }

    public TweetStatView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 2130772162);
    }

    public TweetStatView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LayoutInflater.from(context).inflate(2130969485, this, true);
        this.a = (TextView) findViewById(bcx.name);
        this.b = (TextView) findViewById(2131953270);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.TweetStatView, i, 0);
        this.c = obtainStyledAttributes.getColorStateList(1);
        this.d = obtainStyledAttributes.getColorStateList(3);
        this.a.setTextColor(this.c.getDefaultColor());
        this.b.setTextColor(this.d.getDefaultColor());
        obtainStyledAttributes.recycle();
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        this.a.setTextColor(this.c.getColorForState(drawableState, this.c.getDefaultColor()));
        this.b.setTextColor(this.d.getColorForState(drawableState, this.d.getDefaultColor()));
    }

    public void setName(CharSequence charSequence) {
        this.a.setText(charSequence);
        this.a.setContentDescription(this.a.getText().toString().toLowerCase(Locale.getDefault()));
    }

    public void setValue(CharSequence charSequence) {
        this.b.setText(charSequence);
    }

    public void setTypeface(Typeface typeface) {
        this.a.setTypeface(typeface);
        this.b.setTypeface(typeface);
    }
}
