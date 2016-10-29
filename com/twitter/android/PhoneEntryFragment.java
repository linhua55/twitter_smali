package com.twitter.android;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ArrayAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.android.util.SpannableTextUtil;
import com.twitter.android.util.am;
import com.twitter.android.util.ao;
import com.twitter.android.util.aq;
import com.twitter.android.util.bl;
import com.twitter.android.util.i;
import com.twitter.android.util.o;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.m;
import com.twitter.config.d;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.library.api.y;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.ui.widget.PromptView;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.ui.widget.TwitterSelection;
import com.twitter.ui.widget.au;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.ui.r;
import defpackage.bbu;
import java.util.Collection;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class PhoneEntryFragment extends AbsFragment implements TextWatcher, OnEditorActionListener, lk, ao, bl, m, au {
    private static final int[] b;
    private static final int[] c;
    TwitterEditText a;
    private TwitterSelection d;
    private bs e;
    private boolean f;
    private boolean g;
    private boolean h;
    private boolean i;
    private boolean j;
    private PromptView k;
    private TextView l;
    private xv m;
    private kn n;
    private lh o;
    private qj p;
    private lj q;
    private am r;
    private li s;
    private View t;
    private TextView u;
    private View v;
    private View w;
    private gb x;

    static {
        b = null;
        c = new int[]{2130773029};
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.r = aq.a(this.T);
        this.q = new lj(this, this.r);
        this.s = new li(this);
        this.f = d.a("mandatory_phone_signup_country_code_selection_enabled");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130969171, viewGroup, false);
        this.w = inflate;
        this.a = (TwitterEditText) inflate.findViewById(2131953029);
        if (this.f) {
            ((ViewGroup) this.a.getParent()).removeView(this.a);
            View inflate2 = ((ViewStub) inflate.findViewById(2131953030)).inflate();
            this.a = (TwitterEditText) inflate2.findViewById(2131953029);
            this.d = (TwitterSelection) inflate2.findViewById(2131953031);
            k();
        }
        this.k = (PromptView) inflate.findViewById(2131953028);
        this.v = inflate.findViewById(2131953285);
        this.l = (TextView) inflate.findViewById(2131952430);
        this.t = inflate.findViewById(k.spacer);
        this.u = (TextView) inflate.findViewById(2131951943);
        g o = o();
        this.h = o.a("extra_inline_validation_enabled", false);
        this.i = o.a("is_phone_signup", false);
        this.g = qh.a(o);
        this.q.a(o);
        this.a.setOnEditorActionListener(this);
        return inflate;
    }

    private void k() {
        this.e = new bs(getActivity(), o.a());
        this.d.setSelectedPosition(this.e.a(o.a(getActivity())));
        this.d.setSelectionAdapter(this.e);
    }

    public void a() {
        super.a();
        if (this.h) {
            ValidationState e;
            this.a.addTextChangedListener(this);
            if (this.f) {
                this.d.setOnSelectionChangeListener(this);
            }
            if (this.m != null) {
                e = this.m.e();
            } else {
                e = null;
            }
            if (e != null) {
                if (e.a()) {
                    a(this.a, true);
                } else if (e.b() && a(this.a, 1) == State.VALIDATING) {
                    this.s.a(1);
                }
            }
        } else if (this.m != null) {
            this.m.a(State.VALID, Level.LOCAL);
        } else {
            this.n.a(true);
        }
        if (this.x != null) {
            a(this.x);
        }
    }

    public void e() {
        r.b(this.T, this.a, false);
        if (this.h) {
            this.a.removeTextChangedListener(this);
        }
        super.e();
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.o = (lh) activity;
        if (activity instanceof xv) {
            this.m = (xv) activity;
        }
        if (activity instanceof qj) {
            this.p = (qj) activity;
        }
        this.n = (kn) activity;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (editable == this.a.getText()) {
            l();
        }
    }

    public void a(TwitterSelection twitterSelection, int i) {
        l();
    }

    private void l() {
        if (this.j) {
            bbu.a(new TwitterScribeLog(aT().g()).b("phone100_enter_phone", "form", qh.a(this.g), this.r.i(), "change"));
        }
        if (a(this.a, 1) == State.VALIDATING) {
            this.s.a(1);
        } else {
            this.s.removeMessages(1);
        }
    }

    private State a(TwitterEditText twitterEditText, int i) {
        a(twitterEditText, false);
        this.a.e();
        if (twitterEditText.length() >= i) {
            return State.VALIDATING;
        }
        return State.NOT_VALIDATED;
    }

    private void a(TwitterEditText twitterEditText, boolean z) {
        twitterEditText.setExtraState(z ? c : b);
    }

    public void b() {
        if (m() != null) {
            this.a.e();
            n();
            return;
        }
        this.a.setError(2131363791);
    }

    public void a(String str, boolean z) {
        this.a.setText(BuildConfig.VERSION_NAME);
        this.a.requestFocus();
        if (aj.b((CharSequence) str)) {
            if (this.i && z) {
                this.j = true;
                bbu.a(new TwitterScribeLog(aT().g()).b("phone100_enter_phone", "form", qh.a(this.g), this.r.i(), "prefill"));
            }
            b(str, true);
        }
    }

    private void b(String str, boolean z) {
        if (this.f) {
            PhoneNumberUtil a = PhoneNumberUtil.a();
            try {
                PhoneNumber a2 = a.a(str, null);
                this.d.setSelectedPosition(this.e.a(o.a(a2.b())));
                str = a.a(a2, PhoneNumberFormat.c);
            } catch (NumberParseException e) {
            }
        }
        if (z) {
            ListAdapter arrayAdapter = new ArrayAdapter(getActivity(), 2130969444);
            arrayAdapter.add(str);
            ((PopupEditText) this.a).setAdapter(arrayAdapter);
            i iVar = new i((PopupEditText) this.a);
        }
        this.a.setText(str);
    }

    public void a(String str) {
        b(str, false);
    }

    public void a(int i) {
        this.k.setTitle(i);
    }

    public void a(CharSequence charSequence) {
        this.k.setTitle(charSequence);
    }

    public void c() {
        bm.a(this.T, this.w, 2131689562);
    }

    public void a(boolean z, int i, int i2) {
        if (z) {
            this.v.setVisibility(0);
            this.k.setVisibility(8);
            ((TextView) this.v.findViewById(2131952427)).setText(i);
            TextView textView = (TextView) this.v.findViewById(2131953286);
            textView.setText(i2);
            textView.setVisibility(0);
            return;
        }
        this.v.setVisibility(8);
        this.k.setVisibility(0);
    }

    public void a(Collection<Integer> collection) {
        if (collection.isEmpty()) {
            this.l.setVisibility(8);
            return;
        }
        this.l.setVisibility(0);
        SpannableTextUtil.a(this.T, CollectionUtils.d((Collection) collection), this.l, this);
    }

    public void a(int i, boolean z) {
        if (z) {
            SpannableTextUtil.a(this.T, this.u, i, false);
            this.u.setTextAppearance(this.T, 2131559033);
            return;
        }
        this.u.setText(i);
        this.u.setTextAppearance(this.T, 2131559033);
    }

    public void a(boolean z) {
        this.t.setVisibility(z ? 0 : 8);
    }

    public void f() {
        this.a.setHint(null);
    }

    public void a(gb gbVar) {
        CharSequence charSequence = gbVar.c;
        if (ad()) {
            this.a.setError(charSequence);
            this.x = null;
            return;
        }
        this.x = gbVar;
    }

    private String m() {
        return a(PhoneNumberFormat.a);
    }

    private String a(PhoneNumberFormat phoneNumberFormat) {
        CharSequence j = j();
        return aj.b(j) ? this.r.a(this.r.b(j), phoneNumberFormat) : null;
    }

    private void n() {
        ((ec) ((ec) ((ec) ((ec) new ec(1).a(2131363800)).d(2131363218)).f(2131362585)).a(SpannableTextUtil.a(this.T, this.r.a() ? 2131363799 : 2131363798, this.r.a(j())))).i().a((m) this).a((Fragment) this).a(getFragmentManager());
        bbu.a(new TwitterScribeLog(aT().g()).b("phone100_enter_phone", "sms_confirm_dialog", qh.a(this.g), null, "impression"));
    }

    protected void g() {
        ((ec) ((ec) ((ec) ((ec) new ec(2).a(2131362638)).b(2131363275)).d(2131362405)).f(2131362404)).i().a((m) this).a((Fragment) this).a(getActivity().getSupportFragmentManager());
        bbu.a(new TwitterScribeLog(aT().g()).b("phone100_phone_optional", "skip_confirm_dialog", qh.a(this.g), null, "impression"));
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        String str;
        if (i == 1) {
            if (i2 == -1) {
                this.o.a(m());
                this.o.c(false);
                str = "ok";
            } else {
                str = "cancel";
            }
            bbu.a(new TwitterScribeLog(aT().g()).b("phone100_enter_phone", "sms_confirm_dialog", qh.a(this.g), null, str));
        } else if (i == 2) {
            if (i2 == -1) {
                this.o.a(null);
                this.n.u_();
                str = "ok";
            } else {
                str = "cancel";
            }
            bbu.a(new TwitterScribeLog(aT().g()).b("phone100_phone_optional", "skip_confirm_dialog", qh.a(this.g), null, str));
        }
    }

    public void h() {
        String m = m();
        if (m != null) {
            this.a.e();
            this.o.a(m);
            if (this.p != null) {
                this.p.d(false);
                return;
            }
            return;
        }
        this.a.setError(2131363276);
    }

    public void b(String str) {
        if (str.equals(getString(2131363733))) {
            bbu.a(new TwitterScribeLog(aT().g()).b("phone100_enter_phone", "form", qh.a(this.g), "settings", "click"));
            this.o.b(this.q.a());
        } else if (str.equals(getString(2131364068))) {
            bbu.a(new TwitterScribeLog(aT().g()).b("phone100_enter_phone", "form", qh.a(this.g), "use_email_instead", "click"));
            this.o.f();
        }
    }

    public void a(y yVar) {
        int i = 2131363792;
        boolean z = true;
        if (ad()) {
            State state;
            boolean z2;
            if (yVar == null && !TelephonyUtil.i().h()) {
                state = State.INVALID;
                i = 2131363788;
            } else if (yVar == null || yVar.b()) {
                state = State.VALID;
                i = 0;
            } else if (!yVar.c()) {
                i = 2131363791;
                state = State.INVALID;
            } else if (yVar.a()) {
                if (!this.i) {
                    i = 2131363279;
                }
                state = State.INVALID;
            } else {
                if (!this.i) {
                    i = 2131363265;
                }
                state = State.INVALID;
            }
            TwitterEditText twitterEditText = this.a;
            if (state == State.VALID) {
                z2 = true;
            } else {
                z2 = false;
            }
            a(twitterEditText, z2);
            if (i > 0) {
                this.a.setError(i);
            } else {
                this.a.e();
            }
            if (this.m != null) {
                this.m.a(state, Level.NETWORK);
                return;
            }
            kn knVar = this.n;
            if (state != State.VALID) {
                z = false;
            }
            knVar.a(z);
        }
    }

    protected TwitterEditText i() {
        return this.a;
    }

    String j() {
        if (!this.f) {
            return this.a.getText().toString();
        }
        br brVar = (br) this.d.getSelectedItem();
        return (brVar != null ? brVar.a() : BuildConfig.VERSION_NAME) + this.a.getText();
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (textView.getId() != 2131953029 || i != 5 || !this.n.t_()) {
            return false;
        }
        this.n.b();
        return true;
    }
}
