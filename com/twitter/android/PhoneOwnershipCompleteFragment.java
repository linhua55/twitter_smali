package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.twitter.app.common.base.BaseFragment;
import com.twitter.app.common.base.g;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.util.aj;
import com.twitter.util.ui.r;
import defpackage.bbu;

/* compiled from: Twttr */
public class PhoneOwnershipCompleteFragment extends BaseFragment implements TextWatcher, OnClickListener {
    private EditText a;
    private Button b;
    private TextView c;
    private String d;
    private boolean e;
    private Context f;
    private Session g;
    private lw h;
    private boolean i;
    private final Runnable j;

    public PhoneOwnershipCompleteFragment() {
        this.d = null;
        this.e = false;
        this.i = true;
        this.j = new lv(this);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130969177, null);
        this.f = getActivity().getApplicationContext();
        this.g = bg.a().c();
        getActivity().setTitle(2131363300);
        g o = o();
        this.d = o.f("phone_number");
        this.e = o.a("is_numeric", false);
        this.a = (EditText) inflate.findViewById(2131953037);
        this.a.addTextChangedListener(this);
        this.b = (Button) inflate.findViewById(2131953042);
        this.b.setOnClickListener(this);
        this.c = (TextView) inflate.findViewById(2131953039);
        this.c.setOnClickListener(this);
        TextView textView = (TextView) inflate.findViewById(2131953036);
        String substring = (this.d == null || this.d.length() < 2) ? BuildConfig.VERSION_NAME : this.d.substring(this.d.length() - 2);
        textView.setText(getString(2131363286, substring));
        this.a.post(this.j);
        bbu.a(new TwitterScribeLog(this.g.g()).b("unlock_account", "enter_code:::impression"));
        return inflate;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            this.h = (lw) activity;
        } catch (ClassCastException e) {
            throw new ClassCastException(activity + " must implement OnPhoneOwnershipCompleteListener");
        }
    }

    public void onClick(View view) {
        if (view.getId() == 2131953042) {
            bbu.a(new TwitterScribeLog(this.g.g()).b("unlock_account", "enter_code::verify:click"));
            r.b(getActivity(), this.a, false);
            f();
        } else if (view.getId() == 2131953039) {
            bbu.a(new TwitterScribeLog(this.g.g()).b("unlock_account", "enter_code::resend:click"));
            c();
        }
    }

    private void c() {
        if (aj.b(this.d)) {
            this.h.b(this.d);
            this.c.setText(2131363290);
            this.c.setEnabled(false);
        }
    }

    private void f() {
        this.h.a(this.d, this.a.getText().toString());
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        boolean z = true;
        if (this.i) {
            bbu.a(new TwitterScribeLog(this.g.g()).b("unlock_account", "enter_code::code:input"));
            this.i = false;
        }
        Button button = this.b;
        if (!(aj.b(this.d) && aj.b((CharSequence) editable))) {
            z = false;
        }
        button.setEnabled(z);
    }
}
