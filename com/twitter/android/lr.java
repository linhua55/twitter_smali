package com.twitter.android;

import android.telephony.PhoneNumberUtils;
import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.b;
import java.util.Locale;

/* compiled from: Twttr */
public class lr implements TextWatcher {
    private boolean a;
    private boolean b;
    private final b c;

    public lr() {
        this(Locale.getDefault().getCountry());
    }

    public lr(String str) {
        this.a = false;
        if (str == null) {
            throw new IllegalArgumentException();
        }
        this.c = PhoneNumberUtil.a().h(str);
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (!this.a && !this.b && i2 > 0 && a(charSequence, i, i2)) {
            a();
        }
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (!this.a && !this.b && i3 > 0 && a(charSequence, i, i3)) {
            a();
        }
    }

    public synchronized void afterTextChanged(Editable editable) {
        boolean z = true;
        synchronized (this) {
            if (this.b) {
                if (editable.length() == 0) {
                    z = false;
                }
                this.b = z;
            } else if (!this.a) {
                Object a = a((CharSequence) editable, Selection.getSelectionEnd(editable));
                if (a != null) {
                    int c = this.c.c();
                    this.a = true;
                    editable.replace(0, editable.length(), a, 0, a.length());
                    if (a.equals(editable.toString())) {
                        Selection.setSelection(editable, c);
                    }
                    this.a = false;
                }
            }
        }
    }

    private String a(CharSequence charSequence, int i) {
        int i2 = i - 1;
        String str = null;
        this.c.a();
        int length = charSequence.length();
        int i3 = 0;
        boolean z = false;
        char c = '\u0000';
        while (i3 < length) {
            String str2;
            char charAt = charSequence.charAt(i3);
            if (PhoneNumberUtils.isNonSeparator(charAt)) {
                if (c != '\u0000') {
                    str = a(c, z);
                    z = false;
                }
                c = charAt;
                str2 = str;
            } else {
                str2 = str;
            }
            if (i3 == i2) {
                z = true;
            }
            i3++;
            str = str2;
        }
        if (c != '\u0000') {
            return a(c, z);
        }
        return str;
    }

    private String a(char c, boolean z) {
        return z ? this.c.b(c) : this.c.a(c);
    }

    private void a() {
        this.b = true;
        this.c.a();
    }

    private boolean a(CharSequence charSequence, int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            if (!PhoneNumberUtils.isNonSeparator(charSequence.charAt(i3))) {
                return true;
            }
        }
        return false;
    }
}
