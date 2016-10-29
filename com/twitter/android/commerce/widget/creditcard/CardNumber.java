package com.twitter.android.commerce.widget.creditcard;

import android.content.Context;
import android.text.Editable;
import android.text.InputFilter;
import android.text.InputFilter.LengthFilter;
import android.util.AttributeSet;
import com.twitter.android.commerce.util.a;
import com.twitter.library.commerce.model.CreditCard.Type;
import com.twitter.util.aj;
import java.util.List;

/* compiled from: Twttr */
public class CardNumber extends CardEntryBase<String> {
    private Type d;
    private List<Type> e;
    private Integer f;

    public CardNumber(Context context) {
        super(context);
    }

    public CardNumber(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CardNumber(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected String getDataImpl() {
        return aj.a(getText().toString());
    }

    public void a() {
        super.a();
        setGravity(3);
        setFilters(new InputFilter[]{new LengthFilter(20)});
    }

    public void afterTextChanged(Editable editable) {
        String obj = editable.toString();
        if (obj.length() >= 4) {
            int c = a.c(obj);
            Type e = Type.e(obj);
            if (!e.equals(this.d)) {
                setFilters(new InputFilter[]{new LengthFilter(c)});
            }
            boolean equals = e.equals(Type.INVALID);
            boolean z = (equals || this.e == null || this.e.size() <= 0 || this.e.contains(e)) ? false : true;
            if (equals || z) {
                if (equals) {
                    removeTextChangedListener(this);
                    setSelection(3);
                    addTextChangedListener(this);
                    setLastError(2131362150);
                } else if (z) {
                    if (this.d != e) {
                        this.a.a(e);
                    }
                    this.d = e;
                    setLastError(2131362151);
                }
                this.a.a((CardEntryBase) this);
                setValid(false);
                return;
            }
            if (this.d != e) {
                this.a.a(e);
            }
            this.d = e;
            String b = a.b(obj);
            if (!obj.equalsIgnoreCase(b)) {
                removeTextChangedListener(this);
                setText(b);
                setSelection(b.length());
                addTextChangedListener(this);
            }
            if (b.length() < c) {
                return;
            }
            if (e.d(aj.a(obj))) {
                this.a.d();
                setValid(true);
                return;
            }
            setLastError(2131362150);
            this.a.a((CardEntryBase) this);
            setValid(false);
        } else if (this.d != null) {
            this.d = null;
            this.a.a(Type.INVALID);
        }
    }

    public Type getType() {
        return this.d;
    }

    public void b() {
        setHint(a.a(this.c.getResources().getString(getHintResource())));
    }

    public void setSupportedCardTypes(List<Type> list) {
        this.e = list;
    }

    public String getHelperText() {
        return this.c.getString(2131362094);
    }

    protected int getHintResource() {
        if (this.f == null) {
            return 2131362095;
        }
        return this.f.intValue();
    }

    public void setHintResource(int i) {
        this.f = Integer.valueOf(i);
        b();
    }
}
