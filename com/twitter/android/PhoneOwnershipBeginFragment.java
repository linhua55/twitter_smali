package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat;
import com.twitter.android.util.am;
import com.twitter.android.util.aq;
import com.twitter.android.util.o;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.ui.widget.TwitterSelection;
import com.twitter.ui.widget.au;
import com.twitter.util.aj;
import defpackage.bbu;

/* compiled from: Twttr */
public class PhoneOwnershipBeginFragment extends BaseFragment implements TextWatcher, OnClickListener, au {
    private am a;
    private lr b;
    private bs c;
    private TwitterSelection d;
    private EditText e;
    private Button f;
    private Context g;
    private Session h;
    private lu i;
    private boolean j;
    private boolean k;
    private final Runnable l;

    public PhoneOwnershipBeginFragment() {
        this.l = new ls(this);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130969176, null);
        Context activity = getActivity();
        this.g = activity.getApplicationContext();
        this.h = bg.a().c();
        this.j = false;
        this.k = false;
        activity.setTitle(2131363296);
        this.a = aq.a(activity);
        this.c = new bs(activity, o.a());
        this.d = (TwitterSelection) inflate.findViewById(2131953031);
        this.d.setSelectedPosition(this.c.a(o.a(activity)));
        this.d.setSelectionAdapter(this.c);
        this.d.setOnSelectionChangeListener(this);
        this.e = (EditText) inflate.findViewById(2131953040);
        this.e.requestFocus();
        h();
        this.f = (Button) inflate.findViewById(2131953041);
        this.e.addTextChangedListener(this);
        this.e.setText(c());
        if (aj.a(this.e.getText())) {
            this.e.postDelayed(this.l, 500);
        } else {
            this.e.setSelection(this.e.getText().length());
        }
        this.f.setOnClickListener(this);
        bbu.a(new TwitterScribeLog(this.h.g()).b("unlock_account", "enter_phone:::impression"));
        inflate.postDelayed(new lt(this), 500);
        return inflate;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.i = (lu) activity;
        } catch (ClassCastException e) {
            throw new ClassCastException(activity + " must implement OnPhoneOwnershipBeginListener");
        }
    }

    private String c() {
        String str = null;
        PhoneNumberUtil a = PhoneNumberUtil.a();
        try {
            str = a.a(a.a(this.a.h(), null), PhoneNumberFormat.c);
        } catch (NumberParseException e) {
        }
        return str;
    }

    private String f() {
        br a = this.c.a(this.d.getSelectedPosition());
        if (a == null) {
            return null;
        }
        return this.a.a(this.a.b(a.a() + this.e.getText()));
    }

    public void onClick(View view) {
        if (view.getId() == 2131953041) {
            bbu.a(new TwitterScribeLog(this.h.g()).b("unlock_account", "enter_phone::continue:click"));
            g();
        }
    }

    private void g() {
        CharSequence f = f();
        if (aj.b(f)) {
            this.i.a(f);
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (this.j && this.k) {
            bbu.a(new TwitterScribeLog(this.h.g()).b("unlock_account", "enter_phone::phone_number:input"));
            this.j = false;
        }
        this.f.setEnabled(aj.b(f()));
    }

    private void h() {
        PhoneNumberUtil a = PhoneNumberUtil.a();
        this.e.removeTextChangedListener(this.b);
        br a2 = this.c.a(this.d.getSelectedPosition());
        if (a2 != null) {
            this.b = new lr(a.b(a2.b));
        } else {
            this.b = new lr();
        }
        this.e.addTextChangedListener(this.b);
    }

    public void a(TwitterSelection twitterSelection, int i) {
        if (this.k) {
            bbu.a(new TwitterScribeLog(this.h.g()).b("unlock_account", "enter_phone::country_code:change"));
        }
        h();
        this.f.setEnabled(aj.b(f()));
    }
}
