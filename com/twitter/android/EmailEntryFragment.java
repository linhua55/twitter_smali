package com.twitter.android;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.v4.app.Fragment;
import android.support.v7.recyclerview.BuildConfig;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.Toast;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.android.util.SpannableTextUtil;
import com.twitter.android.util.bl;
import com.twitter.android.util.i;
import com.twitter.android.widget.PendingEmailOverlayPrompt;
import com.twitter.android.widget.ProgressDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.g;
import com.twitter.app.common.base.m;
import com.twitter.config.d;
import com.twitter.internal.android.widget.PopupEditText;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.network.f;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bbw;
import defpackage.bex;
import java.util.Collection;
import java.util.List;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class EmailEntryFragment extends AbsFragment implements TextWatcher, OnEditorActionListener, fe, bl, m {
    private static final int[] c;
    private static final int[] d;
    fc a;
    TwitterEditText b;
    private boolean e;
    private boolean f;
    private boolean g;
    private TypefacesTextView h;
    private TypefacesTextView i;
    private View j;
    private View k;
    private kn l;
    private xv m;
    private qj n;
    private fd o;
    private gb p;
    private ProgressDialogFragment q;
    private w r;
    private long s;
    private Session t;

    static {
        c = null;
        d = new int[]{2130773029};
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.o = new fd(this, f.a(this.T), d.a("people_discoverability_settings_update_enabled"));
        this.a = new fc(this);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130968799, viewGroup, false);
        this.k = inflate;
        g o = o();
        this.b = (TwitterEditText) inflate.findViewById(2131952429);
        this.h = (TypefacesTextView) inflate.findViewById(2131951943);
        this.i = (TypefacesTextView) inflate.findViewById(2131952430);
        this.j = inflate.findViewById(2131953285);
        this.s = o.a("user_id", 0);
        if (this.s == 0) {
            this.s = aT().g();
            this.t = aT();
        } else {
            this.t = bg.a().b(this.s);
        }
        this.e = "add_email".equals(o.f("phone_100_step"));
        this.g = o.a("umf_add_update_email_flow", false);
        String a = o.a("suggested_email", null);
        this.f = qh.a(o);
        this.o.a(o.a("phone_100_step", BuildConfig.VERSION_NAME), a);
        return inflate;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.l = (kn) activity;
        this.m = (xv) activity;
        if (activity instanceof qj) {
            this.n = (qj) activity;
        }
        if (activity instanceof w) {
            this.r = (w) activity;
        }
    }

    public void a() {
        ValidationState e;
        super.a();
        this.b.addTextChangedListener(this);
        if (this.e) {
            r.a(this.T, this.b, aj.a(this.b.getText()));
        }
        if (this.m != null) {
            e = this.m.e();
        } else {
            e = null;
        }
        if (e != null) {
            if (e.a()) {
                a(true);
            } else if (this.m.e().b() && c(3) == State.VALIDATING) {
                this.a.a(1);
            }
        }
        if (this.p != null) {
            a(this.p);
        }
    }

    public void e() {
        r.b(this.T, this.b, false);
        this.b.removeTextChangedListener(this);
        super.e();
    }

    @CallSuper
    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        aa aaVar = (aa) xVar.l().b();
        switch (i) {
            case WireMessage.WIRE_CHAT /*1*/:
                State state;
                if (aaVar.b()) {
                    a(true);
                    state = State.VALID;
                    this.b.e();
                } else {
                    CharSequence e;
                    a(false);
                    State state2 = State.INVALID;
                    if (aj.b(aaVar.e())) {
                        e = aaVar.e();
                    } else if (TelephonyUtil.i().h()) {
                        e = null;
                    } else {
                        e = this.T.getString(2131363788);
                    }
                    this.b.setError(e);
                    state = state2;
                }
                if (this.m != null) {
                    this.m.a(state, Level.NETWORK);
                } else {
                    this.l.a(b());
                }
            case WireMessage.WIRE_CONTROL /*2*/:
                f();
                ab N = xVar.N();
                if (N != null) {
                    Session c = this.Z.c(N.a);
                    if (c != null) {
                        String str;
                        boolean b = ((aa) xVar.l().b()).b();
                        bbw twitterScribeLog = new TwitterScribeLog(c.g());
                        if (b) {
                            str = "success";
                            String obj = this.b.getText().toString();
                            if (this.g) {
                                PendingEmailOverlayPrompt.a(obj, this);
                            } else {
                                this.l.u_();
                            }
                        } else {
                            Toast.makeText(this.T, 2131362586, 0).show();
                            str = "failure";
                        }
                        if (this.g) {
                            twitterScribeLog.b("add_update_email:::email_attach", str);
                        } else {
                            twitterScribeLog.b("phone100_email_optional", "add_email", qh.a(this.f), null, str);
                        }
                        bbu.a(twitterScribeLog);
                    }
                }
            default:
        }
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (textView.getId() != 2131952429 || i != 5 || !this.l.t_()) {
            return false;
        }
        this.l.b();
        return true;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (editable == this.b.getText()) {
            State c = c(3);
            if (c == State.VALIDATING) {
                this.a.a(1);
            } else {
                this.a.removeMessages(1);
            }
            this.m.a(c, Level.LOCAL);
        }
    }

    private State c(int i) {
        a(false);
        this.b.e();
        int length = this.b.length();
        if (length >= i) {
            return State.VALIDATING;
        }
        if (i <= 1 || length >= i) {
            return State.INVALID;
        }
        return State.NOT_VALIDATED;
    }

    void a(boolean z) {
        this.b.setExtraState(z ? d : c);
    }

    boolean b() {
        return this.m.e().a();
    }

    protected void a(String str) {
        String obj = this.b.getText().toString();
        if (aj.b((CharSequence) obj)) {
            a(2131363802);
            a(obj, str);
        }
    }

    protected void c() {
        if (this.n != null) {
            this.n.e(this.b.getText().toString());
            this.n.s();
        }
    }

    public void a(int i) {
        if (this.q == null) {
            this.q = ProgressDialogFragment.a(i);
            this.q.setRetainInstance(true);
            this.q.a(getFragmentManager(), null);
        }
    }

    public void f() {
        if (this.q != null) {
            this.q.b();
            this.q = null;
        }
    }

    protected void g() {
        ((ec) ((ec) ((ec) ((ec) new ec(0).a(2131362638)).b(2131362637)).d(2131362405)).f(2131362403)).i().a((m) this).a((Fragment) this).a(getActivity().getSupportFragmentManager());
        bbu.a(new TwitterScribeLog(this.s).b("phone100_email_optional", "skip_confirm_dialog", qh.a(this.f), null, "impression"));
    }

    public void a(String str, String str2) {
        c(bex.a(this.T, this.t, null, str2, null, str, false), 2, 0);
    }

    private void c(String str) {
        if (aj.a(this.b.getText()) && aj.b((CharSequence) str)) {
            this.b.setText(str);
        }
    }

    private void a(List<String> list) {
        if (list != null && !list.isEmpty()) {
            PopupEditText popupEditText = (PopupEditText) this.b;
            popupEditText.setAdapter(new ArrayAdapter(getActivity(), 2130969444, list));
            i iVar = new i(popupEditText);
        }
    }

    public void a(boolean z, int i, int i2) {
        if (z) {
            this.j.setVisibility(0);
            if (i != 0) {
                ((TextView) this.j.findViewById(2131952427)).setText(i);
            }
            if (i2 != 0) {
                TextView textView = (TextView) this.j.findViewById(2131953286);
                textView.setText(i2);
                textView.setVisibility(0);
                return;
            }
            return;
        }
        this.j.setVisibility(8);
    }

    public void a(String str, List<String> list) {
        this.b.setOnEditorActionListener(this);
        c(str);
        a((List) list);
        this.b.requestFocus();
    }

    public void h() {
        this.b.setTextAppearance(this.T, 2131559405);
    }

    public void i() {
        bm.a(this.T, this.k, 2131689562);
    }

    public void a(Collection<Integer> collection) {
        if (collection.isEmpty()) {
            this.i.setVisibility(8);
            return;
        }
        this.i.setVisibility(0);
        SpannableTextUtil.a(this.T, CollectionUtils.d((Collection) collection), this.i, this);
    }

    public void a(DialogInterface dialogInterface, int i, int i2) {
        if (i == 0) {
            String str;
            if (i2 == -1) {
                this.l.u_();
                str = "ok";
            } else {
                str = "cancel";
            }
            bbu.a(new TwitterScribeLog(this.s).b("phone100_email_optional", "skip_confirm_dialog", qh.a(this.f), null, str));
        }
    }

    public void a(gb gbVar) {
        CharSequence charSequence = gbVar.b;
        if (ad()) {
            this.b.setError(charSequence);
            this.p = null;
            return;
        }
        this.p = gbVar;
    }

    public void b(int i) {
        this.h.setVisibility(0);
        SpannableTextUtil.a(this.T, this.h, i, false);
        this.h.setTextAppearance(this.T, 2131559033);
    }

    public void j() {
        g o = o();
        CharSequence a = o.a("current_email", null);
        if (o.a("umf_update_email_flow", false) && a != null) {
            TwitterEditText twitterEditText = (TwitterEditText) this.k.findViewById(2131952428);
            twitterEditText.setText(a);
            twitterEditText.setVisibility(0);
        }
    }

    public void b(String str) {
        if (str.equals(getString(2131363733))) {
            this.r.b(this.o.a());
        } else if (str.equals(getString(2131364069))) {
            this.n.r();
        }
    }
}
