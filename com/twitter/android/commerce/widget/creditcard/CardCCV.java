package com.twitter.android.commerce.widget.creditcard;

import android.content.Context;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.util.AttributeSet;
import com.twitter.library.commerce.model.CreditCard.Type;

/* compiled from: Twttr */
public class CardCCV extends CardEntryBase<String> {
    private Type d;

    public CardCCV(Context context) {
        super(context);
    }

    public CardCCV(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CardCCV(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public void a() {
        super.a();
    }

    public String getDataImpl() {
        try {
            return getText().toString();
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public void afterTextChanged(Editable editable) {
        if (this.d != null) {
            String obj = editable.toString();
            if (obj.length() < this.d.c()) {
                setValid(false);
                return;
            } else if (obj.length() > this.d.c()) {
                editable.delete(3, editable.length());
                this.a.f();
                setValid(true);
                return;
            } else {
                this.a.f();
                setValid(true);
                return;
            }
        }
        removeTextChangedListener(this);
        setText(BuildConfig.VERSION_NAME);
        addTextChangedListener(this);
    }

    public Type getType() {
        return this.d;
    }

    public void setType(Type type) {
        this.d = type;
    }

    public String getHelperText() {
        return this.c.getString(2131362082);
    }

    protected int getHintResource() {
        return 2131362083;
    }
}
