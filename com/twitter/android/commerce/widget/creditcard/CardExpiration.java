package com.twitter.android.commerce.widget.creditcard;

import android.content.Context;
import android.text.Editable;
import android.util.AttributeSet;
import com.twitter.android.commerce.util.a;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/* compiled from: Twttr */
public class CardExpiration extends CardEntryBase<Calendar> {
    public CardExpiration(Context context) {
        super(context);
    }

    public CardExpiration(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public CardExpiration(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public Calendar getDataImpl() {
        Calendar instance = Calendar.getInstance();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("MM/yy");
        simpleDateFormat.setLenient(false);
        try {
            instance.setTime(simpleDateFormat.parse(getText().toString()));
            return instance;
        } catch (ParseException e) {
            return null;
        }
    }

    public void a() {
        super.a();
    }

    public void afterTextChanged(Editable editable) {
        String obj = editable.toString();
        if (obj.length() > this.b.length()) {
            removeTextChangedListener(this);
            String d = a.d(editable.toString());
            setText(d);
            setSelection(d.length());
            addTextChangedListener(this);
            if (d.length() == 5) {
                this.a.e();
                setValid(true);
            }
            if (d.length() >= 5) {
                this.a.e();
                setValid(true);
            } else if (d.length() < obj.length()) {
                setLastError(2131362143);
                this.a.a((CardEntryBase) this);
                setValid(false);
            }
        }
    }

    public String getHelperText() {
        return this.c.getString(2131362084);
    }

    protected int getHintResource() {
        return 2131362085;
    }
}
