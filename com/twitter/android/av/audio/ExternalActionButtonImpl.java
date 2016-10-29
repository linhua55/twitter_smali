package com.twitter.android.av.audio;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.twitter.android.av.ExternalActionButton;
import com.twitter.android.mx;
import defpackage.bcv;

/* compiled from: Twttr */
public class ExternalActionButtonImpl extends ExternalActionButton {
    public ExternalActionButtonImpl(Context context) {
        super(context);
    }

    public ExternalActionButtonImpl(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ExternalActionButtonImpl(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void a(Context context, AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, mx.ExternalActionButton, i, 0);
        try {
            View inflate = View.inflate(context, obtainStyledAttributes.getResourceId(0, 2130968816), this);
            this.a = (TextView) inflate.findViewById(2131951710);
            this.b = (ProgressBar) inflate.findViewById(2131952471);
            String string = obtainStyledAttributes.getString(1);
            if (string != null) {
                setExternalUri(Uri.parse(string));
            }
            float dimension = obtainStyledAttributes.getDimension(2, context.getResources().getDimension(bcv.button_small_text));
            ColorStateList colorStateList = obtainStyledAttributes.getColorStateList(3);
            if (colorStateList != null) {
                this.a.setTextColor(colorStateList);
            } else {
                this.a.setTextColor(context.getResources().getColor(2131886455));
            }
            this.a.setTextSize(0, dimension);
            this.c = obtainStyledAttributes.getBoolean(4, true);
            if (!this.c) {
                this.b.setVisibility(8);
                this.a.setVisibility(0);
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
        }
    }
}
