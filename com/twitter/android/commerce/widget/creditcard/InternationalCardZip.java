package com.twitter.android.commerce.widget.creditcard;

import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;

/* compiled from: Twttr */
public class InternationalCardZip extends CardEntryBase<String> {
    public InternationalCardZip(Context context) {
        super(context);
    }

    public InternationalCardZip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public InternationalCardZip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected String getDataImpl() {
        return getText().toString();
    }

    public void a() {
        super.a();
        setInputType(1);
        setValid(true);
    }

    public void afterTextChanged(Editable editable) {
    }

    public String getHelperText() {
        return this.c.getString(2131362099);
    }

    protected int getHintResource() {
        return 2131362100;
    }
}
