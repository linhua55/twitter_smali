package com.twitter.android;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import bbu;
import bex;
import cey;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.android.util.SpannableTextUtil;
import com.twitter.android.util.bl;
import com.twitter.android.widget.ProgressDialogFragment;
import com.twitter.app.common.base.g;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.util.ag;
import com.twitter.model.core.ca;
import com.twitter.model.core.cd;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.ui.widget.TypefacesTextView;
import com.twitter.util.ab;
import com.twitter.util.aj;
import com.twitter.util.ui.r;
import defpackage.bct;
import defpackage.beq;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public class UsernameEntryFragment extends AbsFragment implements TextWatcher, OnEditorActionListener, bl {
    private static final int[] c;
    private static final int[] d;
    xr a;
    TwitterEditText b;
    private ProgressDialogFragment e;
    private kn f;
    private qj g;
    private xv h;
    private TypefacesTextView i;
    private boolean j;
    private String k;
    private String l;
    private String m;
    private String[] n;

    public UsernameEntryFragment() {
        this.n = new String[0];
    }

    static {
        c = null;
        d = new int[]{bct.state_validated};
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.a = new xr(this);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130969512, null);
        TextView textView = (TextView) inflate.findViewById(2131953286);
        ((TextView) inflate.findViewById(2131952427)).setText(2131364078);
        textView.setText(2131364077);
        textView.setVisibility(0);
        this.b = (TwitterEditText) inflate.findViewById(2131951738);
        this.i = (TypefacesTextView) inflate.findViewById(2131953356);
        this.b.setOnEditorActionListener(this);
        this.b.requestFocus();
        g o = o();
        if (o.a("extra_flow_data")) {
            FlowData flowData = (FlowData) o.h("extra_flow_data");
            this.k = flowData.a();
            this.l = flowData.d();
            this.m = flowData.f();
            this.j = flowData.h();
        }
        b();
        return inflate;
    }

    public void a() {
        super.a();
        this.b.addTextChangedListener(this);
        ValidationState e = this.h.e();
        if (e.b() && g() == State.b) {
            this.a.a(3);
        } else if (e.a()) {
            a(true);
        }
    }

    public void e() {
        r.b(this.T, this.b, false);
        this.b.removeTextChangedListener(this);
        super.e();
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (editable != this.b.getText()) {
            return;
        }
        if (a("@" + this.b.getText())) {
            this.b.e();
            a(true);
            this.h.a(State.c, Level.a);
            this.a.removeMessages(3);
            return;
        }
        State g = g();
        if (g == State.b) {
            this.a.a(3);
        } else {
            this.a.removeMessages(3);
        }
        this.h.a(g, Level.a);
    }

    boolean a(String str) {
        for (String equalsIgnoreCase : this.n) {
            if (str.equalsIgnoreCase(equalsIgnoreCase)) {
                return true;
            }
        }
        return str.equalsIgnoreCase(this.m);
    }

    void b() {
        if (this.n.length == 0) {
            if (aj.b(this.k)) {
                c(new beq(this.T, aT(), this.l, this.k), 3, 0);
            }
            if (aj.b(this.m)) {
                SpannableTextUtil.a(this.T, new String[]{"@" + this.m}, 2131364079, this.i, this);
                return;
            }
            return;
        }
        SpannableTextUtil.a(this.T, this.n, 2131364079, this.i, this);
    }

    private State g() {
        a(false);
        this.b.e();
        if (this.b.length() >= 1) {
            return State.b;
        }
        return State.a;
    }

    private static int b(Editable editable) {
        return cey.d.matcher(editable).matches() ? 2131363794 : 2131363793;
    }

    void a(boolean z) {
        this.b.setExtraState(z ? d : c);
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.f = (kn) activity;
        if (activity instanceof qj) {
            this.g = (qj) activity;
        }
        this.h = (xv) activity;
    }

    @CallSuper
    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        aa aaVar = (aa) xVar.l().b();
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                State state;
                if (aaVar.b()) {
                    a(true);
                    state = State.c;
                    this.b.e();
                } else {
                    a(false);
                    State state2 = State.d;
                    this.b.setError(aaVar.e());
                    state = state2;
                }
                this.h.a(state, Level.b);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                if (aaVar.b()) {
                    if (this.g != null) {
                        this.g.g(aT().e());
                    }
                    bbu.a(new TwitterScribeLog(aT().g()).b(new String[]{"phone100_enter_username", "update_username", qh.a(this.j), null, "success"}));
                    getActivity().runOnUiThread(new xq(this));
                } else {
                    CharSequence a = a((cd) ab.a(aaVar.c, "CUSTOM_ERRORS", cd.a));
                    a(false);
                    TwitterEditText twitterEditText = this.b;
                    if (a == null) {
                        a = getString(2131363539);
                    }
                    twitterEditText.setError(a);
                }
                f();
            case Util.TYPE_OTHER /*3*/:
                if (aaVar.b()) {
                    List<String> g = ((beq) xVar).g();
                    if (g != null && !g.isEmpty()) {
                        List arrayList = new ArrayList();
                        if (aj.b(this.m)) {
                            g.add(0, this.m);
                        }
                        for (String str : g) {
                            arrayList.add("@" + str);
                        }
                        this.n = (String[]) arrayList.toArray(new String[arrayList.size()]);
                        SpannableTextUtil.a(this.T, this.n, 2131364079, this.i, this);
                    }
                }
            default:
        }
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (textView.getId() != 2131951738 || i != 5 || !this.f.t_()) {
            return false;
        }
        this.f.b();
        return true;
    }

    public void c() {
        String obj = this.b.getText().toString();
        if (obj.equals(this.m)) {
            this.f.u_();
        } else if (obj.length() >= 5) {
            bex a = bex.a(getActivity(), aT(), obj, null, null, null, false);
            a(2131364189);
            a(a);
        } else {
            this.b.setError(2131363541);
        }
    }

    protected void a(bex bex) {
        c(bex, 2, 0);
    }

    protected void a(x xVar) {
        c(xVar, 1, 0);
    }

    protected void a(int i) {
        if (this.e == null) {
            this.e = ProgressDialogFragment.a(i);
            this.e.setRetainInstance(true);
            this.e.a(getFragmentManager(), null);
        }
    }

    protected void f() {
        if (this.e != null) {
            this.e.dismissAllowingStateLoss();
            this.e = null;
        }
    }

    private String a(cd cdVar) {
        if (cdVar != null) {
            ca a = ag.a(cdVar);
            if (a != null && a.c.startsWith("The user failed validation: ")) {
                return a.c.substring("The user failed validation: ".length());
            }
        }
        return null;
    }

    public void b(String str) {
        Object substring = str.substring(1);
        this.b.setText(substring);
        this.b.setSelection(substring.length());
        bbu.a(new TwitterScribeLog(aT().g()).b(new String[]{"phone100_enter_username", "update_username", qh.a(this.j), "suggestion", "click"}));
    }
}
