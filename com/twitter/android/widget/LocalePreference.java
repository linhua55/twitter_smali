package com.twitter.android.widget;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.DialogPreference;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ArrayAdapter;
import android.widget.RadioGroup;
import android.widget.Spinner;
import com.twitter.util.a;
import com.twitter.util.c;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/* compiled from: Twttr */
public class LocalePreference extends DialogPreference {
    private final SharedPreferences a;
    private final ArrayAdapter<String> b;
    private final List<String> c;
    private Spinner d;
    private RadioGroup e;
    private int f;
    private String g;
    private final Locale h;

    public LocalePreference(Context context, AttributeSet attributeSet) {
        CharSequence charSequence;
        super(context, attributeSet);
        this.c = new ArrayList();
        setDialogLayoutResource(2130968953);
        this.h = context.getResources().getConfiguration().locale;
        this.a = context.getSharedPreferences("debug_prefs", 0);
        int i = this.a.getInt("debug_locale_radio", 0);
        String string = this.a.getString("debug_locale_spinner", TtmlNode.ANONYMOUS_REGION_ID);
        if (i == 1) {
            charSequence = "Current Locale: custom (" + string + ")";
        } else if (i == 2) {
            charSequence = "Current Locale: TCC IDs (en_ss)";
        } else {
            charSequence = "Current Locale: system (" + a.e(this.h) + ")";
        }
        setSummary(charSequence);
        Locale[] availableLocales = Locale.getAvailableLocales();
        Arrays.sort(availableLocales, new bw(this));
        List arrayList = new ArrayList();
        for (Locale locale : availableLocales) {
            if (a.d(locale)) {
                String e = a.e(locale);
                this.c.add(e);
                arrayList.add(e + " - " + locale.getDisplayName(locale));
            }
        }
        this.b = new ArrayAdapter(context, 17367048, arrayList);
        this.b.setDropDownViewResource(17367049);
    }

    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        int i = this.a.getInt("debug_locale_radio", 0);
        String string = this.a.getString("debug_locale_spinner", a.e(this.h));
        this.e = (RadioGroup) view.findViewById(2131952660);
        if (i == 1) {
            this.e.check(2131952663);
        } else if (i == 2) {
            this.e.check(2131952662);
        } else {
            this.e.check(2131952661);
        }
        this.d = (Spinner) view.findViewById(2131952664);
        this.d.setAdapter(this.b);
        this.e.setOnCheckedChangeListener(new bx(this));
        int indexOf = this.c.indexOf(string);
        if (indexOf == -1) {
            indexOf = this.c.indexOf(a.e(this.h));
        }
        if (indexOf != -1) {
            this.d.setSelection(indexOf);
        }
        this.d.setEnabled(i == 1);
        this.f = i;
        this.g = string;
    }

    protected void onDialogClosed(boolean z) {
        if (z) {
            int i;
            switch (this.e.getCheckedRadioButtonId()) {
                case 2131952662:
                    i = 2;
                    break;
                case 2131952663:
                    i = 1;
                    break;
                default:
                    i = 0;
                    break;
            }
            String str = (String) this.c.get(this.d.getSelectedItemPosition());
            this.a.edit().putInt("debug_locale_radio", i).putString("debug_locale_spinner", str).apply();
            if (i != this.f || (i == 1 && !str.equals(this.g))) {
                c.a(getContext(), 1000);
            }
        }
    }
}
