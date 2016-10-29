package com.twitter.android.util;

import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.internal.android.widget.ag;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class i implements TextWatcher, OnClickListener, ag {
    protected PopupEditText b;

    public i(PopupEditText popupEditText) {
        this.b = popupEditText;
        this.b.setOnClickListener(this);
        this.b.setPopupEditTextListener(this);
        this.b.addTextChangedListener(this);
    }

    public void onClick(View view) {
        if (!a()) {
            return;
        }
        if (this.b.c()) {
            this.b.b();
        } else {
            this.b.a();
        }
    }

    public void a(int i) {
        String str = (String) this.b.getAdapter().getItem(i);
        this.b.setText(str);
        this.b.setSelection(str.length());
    }

    public void w() {
    }

    public void a(CharSequence charSequence) {
    }

    public void a(int i, int i2) {
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (!a()) {
            return;
        }
        if (aj.a((CharSequence) editable)) {
            this.b.a();
        } else {
            this.b.b();
        }
    }

    public boolean a() {
        return this.b.hasFocus() && this.b.getAdapter().getCount() > 0;
    }
}
