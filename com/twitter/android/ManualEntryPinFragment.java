package com.twitter.android;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.android.client.bm;
import com.twitter.android.client.bn;
import com.twitter.android.widget.PinEntryEditText;
import com.twitter.android.widget.dk;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.m;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.model.login.OneFactorEligibleFactor.FactorType;
import com.twitter.ui.widget.PromptView;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.aj;
import com.twitter.util.ui.r;
import defpackage.bbu;

/* compiled from: Twttr */
public class ManualEntryPinFragment extends AbsFragment implements TextWatcher, OnClickListener, bn, dk, m {
    protected lx a;
    protected qj b;
    protected PinEntryEditText c;
    protected TwitterButton d;
    protected View e;
    protected TypefacesTextView f;
    protected View g;
    private boolean h;
    private boolean i;
    private boolean j;
    private String k;
    private FactorType l;
    private xv m;

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        int i;
        g o = o();
        boolean a = o.a("nux_flow", false);
        boolean a2 = o.a("phone100_flow", false);
        boolean a3 = o.a("is_seamful_design_enabled", false);
        boolean a4 = o.a("1fa_login", false);
        boolean a5 = o.a("settings_add_phone", false);
        boolean a6 = o.a("settings_update_phone", false);
        this.i = o.a("phone100_add_phone_flow", false);
        this.k = o.f("1fa_destination");
        this.l = FactorType.values()[o.b("1fa_type")];
        if (a && !a3) {
            i = 2130969186;
        } else if (a4) {
            i = 2130968974;
        } else {
            i = 2130968975;
        }
        View inflate = layoutInflater.inflate(i, null);
        boolean z = o.a("should_intercept_pin", false) && lf.a().a(this.T, "android.permission.RECEIVE_SMS");
        this.h = z;
        this.d = (TwitterButton) inflate.findViewById(2131953051);
        this.e = inflate.findViewById(2131952176);
        this.f = (TypefacesTextView) inflate.findViewById(2131952695);
        this.g = inflate.findViewById(2131953285);
        CharSequence string = getResources().getString(2131363306);
        if (this.e != null) {
            if (a && !a3) {
                ((PromptView) this.e).setTitle(string);
            } else if (!a4) {
                ((TextView) this.e).setText(string);
            }
        }
        this.c = (PinEntryEditText) inflate.findViewById(2131952694);
        this.c.setOnFilledInputListener(this);
        this.c.setOnClickListener(this);
        if (bundle == null) {
            a(o, this.c);
        }
        a(this.c);
        if (a4) {
            h();
        } else {
            a(a2, a3);
        }
        if ((a5 || a6) && this.f != null) {
            if (a5) {
                this.f.setText(2131363303);
            } else if (a6) {
                this.f.setText(2131363318);
            }
        }
        this.j = qh.a(o);
        return inflate;
    }

    private static void a(g gVar, EditText editText) {
        if (gVar.a("extra_flow_data")) {
            FlowData flowData = (FlowData) gVar.h("extra_flow_data");
            CharSequence n = flowData == null ? null : flowData.n();
            if (aj.b(n) && editText != null && editText.getText().toString().isEmpty()) {
                editText.setText(n);
            }
        }
    }

    private void a(boolean z, boolean z2) {
        if (z || z2) {
            CharSequence string = getString(2131363305, this.a.q());
            if (this.e != null) {
                this.e.setVisibility(8);
            }
            if (this.f != null) {
                this.f.setVisibility(8);
            }
            TypefacesTextView typefacesTextView = (TypefacesTextView) this.g.findViewById(2131952427);
            TypefacesTextView typefacesTextView2 = (TypefacesTextView) this.g.findViewById(2131953286);
            typefacesTextView.setText(2131363306);
            typefacesTextView2.setText(string);
            this.g.setVisibility(0);
            typefacesTextView.setVisibility(0);
            typefacesTextView2.setVisibility(0);
            if (z2) {
                a(0);
                return;
            } else {
                a(8);
                return;
            }
        }
        a(0);
        if (this.g != null) {
            this.g.setVisibility(8);
        }
        if (this.e != null) {
            this.e.setVisibility(0);
        }
        if (this.f != null) {
            this.f.setVisibility(0);
        }
    }

    private void h() {
        int i;
        int i2;
        if (this.l == FactorType.EMAIL) {
            i = 2131362964;
            i2 = 2131362978;
        } else {
            i = 2131362965;
            i2 = 2131362979;
        }
        CharSequence string = getString(i2, this.k);
        TypefacesTextView typefacesTextView = (TypefacesTextView) this.g.findViewById(2131952427);
        TypefacesTextView typefacesTextView2 = (TypefacesTextView) this.g.findViewById(2131953286);
        typefacesTextView.setText(string);
        typefacesTextView2.setText(i);
        this.g.setVisibility(0);
        typefacesTextView.setVisibility(0);
        typefacesTextView2.setVisibility(0);
    }

    private void a(int i) {
        if (this.d != null) {
            this.d.setVisibility(i);
            if (i == 0) {
                this.d.setOnClickListener(this);
            }
        }
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.a = (lx) activity;
        if (activity instanceof qj) {
            this.b = (qj) activity;
        }
        if (activity instanceof xv) {
            this.m = (xv) activity;
        }
    }

    public void a() {
        super.a();
        this.c.addTextChangedListener(this);
        r.a(getActivity(), this.c, true);
        if (this.m != null) {
            this.m.a(i(), Level.LOCAL);
        }
        if (this.h) {
            bm.a(this.T).a((bn) this);
        }
    }

    public void e() {
        a(false);
        this.c.removeTextChangedListener(this);
        if (this.h) {
            bm.a(this.T).b();
        }
        super.e();
    }

    public void onClick(View view) {
        if (view.getId() == 2131953051) {
            b();
        } else if (view.getId() == 2131952694) {
            a(true);
        }
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 0 && i2 == -1 && this.b != null) {
            bbu.a(new TwitterScribeLog(aT().g()).b("phone100_phone_optional_verify", "phone_verification", qh.a(this.j), "resend", "click"));
            this.b.d(true);
        }
    }

    public void b() {
        this.a.p();
    }

    public void b(String str) {
        f();
    }

    public void c() {
        ((ec) ((ec) ((ec) new ec(0).a(2131363308)).d(2131363309)).f(2131362041)).i().a((Fragment) this).a(getFragmentManager());
    }

    public void c(String str) {
        if (this.i) {
            d(str);
        } else {
            this.a.d(str);
        }
    }

    protected void a(boolean z) {
        r.b(getActivity(), this.c, z);
    }

    public void f() {
        this.c.setText(BuildConfig.VERSION_NAME);
    }

    public void d(String str) {
        if (this.b != null) {
            this.b.f(str);
        }
    }

    public void g() {
        if (this.b != null) {
            this.b.b(this.c.getText().toString());
        }
    }

    public void a(String str) {
        if (aj.a(this.c.getText().toString())) {
            int fullLength = this.c.getFullLength();
            if (this.i) {
                d(str);
            } else if (str.length() == fullLength) {
                this.c.setText(str);
            }
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (editable == this.c.getText() && this.m != null) {
            this.m.a(i(), Level.LOCAL);
        }
    }

    private State i() {
        CharSequence obj = this.c.getText().toString();
        if (aj.b(obj) && obj.length() == this.c.getFullLength()) {
            return State.VALID;
        }
        return State.INVALID;
    }

    private static void a(EditText editText) {
        if (editText != null) {
            editText.setSelection(editText.getText().length());
            editText.requestFocus();
        }
    }
}
