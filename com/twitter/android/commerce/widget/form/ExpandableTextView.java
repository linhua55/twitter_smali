package com.twitter.android.commerce.widget.form;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.twitter.android.mx;

/* compiled from: Twttr */
public class ExpandableTextView extends TextView {
    private CharSequence a;
    private BufferType b;
    private boolean c;
    private boolean d;
    private int e;
    private int f;
    private boolean g;
    private final String h;

    public ExpandableTextView(Context context) {
        this(context, null);
    }

    public ExpandableTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = true;
        this.c = true;
        this.h = context.getString(2131362114);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, mx.ExpandableTextView);
        try {
            this.e = obtainStyledAttributes.getInt(0, 4);
            this.f = obtainStyledAttributes.getInt(1, 6);
            setShouldTrim(obtainStyledAttributes.getBoolean(2, true));
            setOnClickListener(new a(this));
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    private void b() {
        super.setText(getTextForCurrentMode(), this.b);
    }

    private CharSequence getTextForCurrentMode() {
        if (a()) {
            return this.c ? a(this.a) : this.a;
        } else {
            return this.a;
        }
    }

    public void setText(CharSequence charSequence, BufferType bufferType) {
        this.a = charSequence;
        this.b = bufferType;
        if (getLayout() != null) {
            b();
        } else {
            super.setText(charSequence, bufferType);
        }
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.g) {
            this.g = false;
            b();
        }
    }

    private CharSequence a(CharSequence charSequence) {
        if (getLayout().getLineCount() <= this.f) {
            return this.a;
        }
        CharSequence spannableString = new SpannableString(this.h);
        spannableString.setSpan(new ForegroundColorSpan(getResources().getColor(2131886264)), 0, spannableString.length(), 0);
        return new SpannableStringBuilder(this.a, 0, (getLayout().getLineEnd(this.e - 1) - (spannableString.length() + 1)) + 1).append(spannableString);
    }

    public CharSequence getOriginalText() {
        return this.a;
    }

    public void setLineTrimLength(int i) {
        this.e = i;
        b();
    }

    public int getLineTrimLength() {
        return this.e;
    }

    public int getTrimThreshold() {
        return this.f;
    }

    public void setTrimThreshold(int i) {
        this.f = i;
    }

    public boolean a() {
        return this.d;
    }

    public void setShouldTrim(boolean z) {
        this.d = z;
    }
}
