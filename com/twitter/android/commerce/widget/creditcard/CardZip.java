package com.twitter.android.commerce.widget.creditcard;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.util.AttributeSet;

/* compiled from: Twttr */
public class CardZip extends CardEntryBase<String> {
    public CardZip(Context context) {
        super(context);
    }

    public CardZip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CardZip(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected String getDataImpl() {
        return getText().toString();
    }

    public void a() {
        super.a();
        setFilters(new InputFilter[]{new LengthFilter(5)});
    }

    public void afterTextChanged(Editable editable) {
        if (editable.toString().length() == 5) {
            this.a.g();
            setValid(true);
            return;
        }
        setValid(false);
    }

    public String getHelperText() {
        return this.c.getString(2131362099);
    }

    protected int getHintResource() {
        return 2131362100;
    }
}
