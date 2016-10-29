package com.twitter.library.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import android.util.AttributeSet;
import android.widget.RadioButton;
import defpackage.bct;
import defpackage.bcu;
import defpackage.bdd;
import defpackage.bde;

/* compiled from: Twttr */
public class StyleableRadioButton extends RadioButton {
    public final int a;
    public final int b;
    @ColorInt
    private final int c;
    @ColorInt
    private final int d;

    public StyleableRadioButton(Context context) {
        this(context, null);
    }

    public StyleableRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, bct.radioButtonStyle);
    }

    public StyleableRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, bdd.StyleableRadioButton, i, 0);
        this.a = obtainStyledAttributes.getResourceId(bdd.StyleableRadioButton_normalStyle, 0);
        this.b = obtainStyledAttributes.getResourceId(bdd.StyleableRadioButton_checkedStyle, 0);
        this.c = obtainStyledAttributes.getColor(bdd.StyleableRadioButton_checkedIconColor, ContextCompat.getColor(getContext(), bcu.twitter_blue));
        this.d = obtainStyledAttributes.getColor(bdd.StyleableRadioButton_uncheckedIconColor, ContextCompat.getColor(getContext(), bcu.text));
        obtainStyledAttributes.recycle();
        a(isChecked());
    }

    public void setChecked(boolean z) {
        super.setChecked(z);
        setTextAppearance(getContext(), z ? this.b : this.a);
        a(z);
    }

    private void a(boolean z) {
        for (Drawable drawable : getCompoundDrawables()) {
            if (z) {
                bde.a(drawable, this.c);
            } else {
                bde.a(drawable, this.d);
            }
        }
    }
}
