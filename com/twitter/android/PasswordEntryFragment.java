package com.twitter.android;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.Toast;
import bbu;
import ber;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.android.widget.ProgressDialogFragment;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.network.an;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.ui.widget.ao;
import com.twitter.util.ui.r;
import defpackage.bct;
import defpackage.bdc;
import defpackage.bdd;
import defpackage.bpe;

/* compiled from: Twttr */
public class PasswordEntryFragment extends AbsFragment implements TextWatcher, OnEditorActionListener, ao {
    private static final int[] b;
    private static final int[] c;
    private static final int[] d;
    private static final int[] e;
    private static final int[][] f;
    TwitterEditText a;
    private State g;
    private int h;
    private int i;
    private boolean j;
    private ProgressDialogFragment k;
    private lb l;
    private kn m;
    private qj n;
    private xv o;

    public PasswordEntryFragment() {
        this.h = 129;
        this.i = 0;
    }

    static {
        b = null;
        c = new int[]{bct.state_validated};
        d = new int[]{2130773003};
        e = new int[]{2130773003, bct.state_validated};
        f = new int[][]{b, c, d, e};
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.l = new lb(this);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130969160, null);
        TextView textView = (TextView) inflate.findViewById(2131953286);
        ((TextView) inflate.findViewById(2131952427)).setText(2131363235);
        textView.setText(2131363234);
        textView.setVisibility(0);
        this.a = (TwitterEditText) inflate.findViewById(2131953013);
        this.a.setInputType(this.h);
        this.a.setOnEditorActionListener(this);
        this.a.setTypeface(Typeface.DEFAULT);
        this.a.setOnStatusIconClickListener(this);
        this.a.requestFocus();
        this.j = qh.a(o());
        return inflate;
    }

    public void a() {
        super.a();
        this.a.addTextChangedListener(this);
        if (this.o != null) {
            ValidationState e = this.o.e();
            if (e.a()) {
                a(true);
            } else if (e.b() && a(1) == State.b) {
                this.l.a(1);
            }
        } else if (a(1) == State.b) {
            this.l.a(1);
        }
    }

    public void e() {
        r.b(this.T, this.a, false);
        this.a.removeTextChangedListener(this);
        super.e();
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.m = (kn) activity;
        if (activity instanceof xv) {
            this.o = (xv) activity;
        }
        if (activity instanceof qj) {
            this.n = (qj) activity;
        }
    }

    @CallSuper
    protected void a(x xVar, int i, int i2) {
        int i3 = 0;
        super.a(xVar, i, i2);
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                boolean z = !xVar.U() || ((bpe) xVar).e().a();
                a(z);
                if (z) {
                    this.g = State.c;
                    this.a.e();
                } else {
                    this.g = State.d;
                    this.a.setError(2131363790);
                }
                if (this.o != null) {
                    this.o.a(this.g, Level.b);
                }
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                c();
                if (xVar.U()) {
                    a(((ber) xVar).c, false);
                    bbu.a(new TwitterScribeLog(aT().g()).b(new String[]{"phone100_change_password", "change_password", qh.a(this.j), null, "success"}));
                    return;
                }
                int[] a = an.a(((aa) xVar.l().b()).c);
                int i4 = (a == null || a.length == 0) ? 0 : a[0];
                switch (i4) {
                    case bdd.AppCompatTheme_editTextColor /*62*/:
                        i3 = 2131363789;
                        break;
                    case 114:
                        a(null, true);
                        bbu.a(new TwitterScribeLog(aT().g()).b(new String[]{"phone100_change_password", "change_password", qh.a(this.j), null, "wrong_current"}));
                        break;
                    case 238:
                        i3 = 2131363230;
                        break;
                    default:
                        Toast.makeText(this.T, 2131363231, 1).show();
                        this.m.a(bdc.skip);
                        this.a.setText(TtmlNode.ANONYMOUS_REGION_ID);
                        break;
                }
                if (i3 != 0) {
                    this.a.setError(i3);
                }
            default:
        }
    }

    private void a(String str, boolean z) {
        FlowData.c(this.T);
        if (this.n != null) {
            if (z) {
                this.n.h(null);
            } else if (str != null) {
                this.n.h(str);
            }
            this.n.g(true);
        }
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (textView.getId() != 2131953013 || i != 5 || !this.m.t_()) {
            return false;
        }
        this.m.b();
        return true;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (editable == this.a.getText()) {
            this.g = a(1);
            if (this.g == State.b) {
                this.l.a(1);
            } else {
                this.l.removeMessages(1);
            }
            if (this.o != null) {
                this.o.a(this.g, Level.a);
            }
        }
    }

    private State a(int i) {
        a(false);
        this.a.e();
        int length = this.a.length();
        if (length >= i) {
            return State.b;
        }
        if (length < i) {
            return State.a;
        }
        return State.d;
    }

    private void a(boolean z) {
        if (z) {
            this.i |= 1;
        } else {
            this.i &= -2;
        }
        this.a.setExtraState(f[this.i]);
    }

    public void a(String str) {
        if (this.a.getText().toString().length() >= 6) {
            ber ber = new ber(getActivity().getApplicationContext(), new ab(aT()), str, this.a.getText().toString(), null);
            ber.h(1);
            c(2131364189);
            a(ber);
            return;
        }
        this.a.setError(2131363789);
    }

    protected void a(ber ber) {
        c(ber, 2, 0);
    }

    protected void a(bpe bpe) {
        c(bpe, 1, 0);
    }

    private void c(int i) {
        if (this.k == null) {
            this.k = ProgressDialogFragment.a(i);
            this.k.setRetainInstance(true);
            this.k.a(getFragmentManager(), null);
        }
    }

    private void c() {
        if (this.k != null) {
            this.k.dismissAllowingStateLoss();
            this.k = null;
        }
    }

    public boolean a(TwitterEditText twitterEditText) {
        if (this.a != twitterEditText) {
            return false;
        }
        this.a.removeTextChangedListener(this);
        int selectionStart = this.a.getSelectionStart();
        int selectionEnd = this.a.getSelectionEnd();
        if (this.h != 145) {
            this.h = 145;
            this.i |= 2;
        } else {
            this.h = 129;
            this.i &= -3;
        }
        this.a.setInputType(this.h);
        this.a.setTypeface(Typeface.DEFAULT);
        a(this.o.e().a());
        this.a.setSelection(selectionStart, selectionEnd);
        this.a.addTextChangedListener(this);
        return true;
    }

    public void b() {
        a(null, false);
    }
}
