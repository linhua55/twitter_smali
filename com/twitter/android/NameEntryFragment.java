package com.twitter.android;

import android.app.Activity;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.content.Loader;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.twitter.android.ValidationState.Level;
import com.twitter.android.ValidationState.State;
import com.twitter.android.util.bi;
import com.twitter.app.common.base.g;
import com.twitter.library.client.AbsFragment;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.util.aj;
import com.twitter.util.ui.r;
import defpackage.bct;

/* compiled from: Twttr */
public class NameEntryFragment extends AbsFragment implements LoaderCallbacks<Cursor>, TextWatcher, OnEditorActionListener {
    private static final int[] b;
    private static final int[] c;
    TwitterEditText a;
    private kl d;
    private kn e;
    private qj f;
    private xv g;
    private gb h;
    private NameLoaderState i;

    /* compiled from: Twttr */
    enum NameLoaderState {
        NOT_STARTED,
        LOADING,
        FINISHED
    }

    public NameEntryFragment() {
        this.i = NameLoaderState.NOT_STARTED;
    }

    public /* synthetic */ void onLoadFinished(Loader loader, Object obj) {
        a(loader, (Cursor) obj);
    }

    static {
        b = null;
        c = new int[]{bct.state_validated};
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.d = new kl(this);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130969065, null);
        ((TextView) inflate.findViewById(2131952427)).setText(2131363130);
        this.a = (TwitterEditText) inflate.findViewById(2131952832);
        this.a.setOnEditorActionListener(this);
        if (bundle == null) {
            a(o(), this.a);
        }
        a(this.a);
        return inflate;
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        this.e = (kn) activity;
        this.f = (qj) activity;
        this.g = (xv) activity;
    }

    public void e() {
        super.e();
        r.b(this.T, this.a, false);
        this.a.removeTextChangedListener(this);
    }

    public void a() {
        super.a();
        this.a.addTextChangedListener(this);
        ValidationState e = this.g.e();
        if (e != null) {
            if (e.a()) {
                a(true);
            } else if (e.b() && a(1) == State.b) {
                this.d.a(1);
            }
        } else if (a(1) == State.b) {
            this.d.a(1);
        }
        if (this.h != null) {
            a(this.h);
        }
    }

    void a(g gVar, EditText editText) {
        if (gVar.a("extra_flow_data")) {
            FlowData flowData = (FlowData) gVar.h("extra_flow_data");
            CharSequence a = flowData == null ? null : flowData.a();
            if (!aj.b(a) || editText == null || editText.getText().toString().equals(a)) {
                c();
                return;
            } else {
                editText.setText(a);
                return;
            }
        }
        c();
    }

    private void c() {
        if (lf.a().a(this.T, new String[]{"android.permission.READ_CONTACTS"})) {
            getLoaderManager().initLoader(0, null, this);
        }
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (textView.getId() != 2131952832 || i != 5 || !this.e.t_()) {
            return false;
        }
        this.e.b();
        return true;
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (editable == this.a.getText()) {
            State a = a(1);
            if (a == State.b) {
                this.d.a(1);
            } else {
                this.d.removeMessages(1);
            }
            this.g.a(a, Level.a);
        }
    }

    private State a(int i) {
        a(false);
        this.a.e();
        if (this.a.length() >= i) {
            return State.b;
        }
        return State.a;
    }

    private void a(boolean z) {
        this.a.setExtraState(z ? c : b);
    }

    private static void a(EditText editText) {
        if (editText != null) {
            editText.setSelection(editText.getText().length());
            editText.requestFocus();
        }
    }

    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        this.i = NameLoaderState.LOADING;
        return bi.a(this.T).d();
    }

    public void a(Loader<Cursor> loader, Cursor cursor) {
        if (aj.a(this.a.getText()) && cursor != null && cursor.moveToFirst()) {
            CharSequence string = cursor.getString(cursor.getColumnIndex("display_name"));
            if (aj.b(string)) {
                this.a.setText(string);
                this.g.a(State.b, Level.a);
                this.d.a(1);
                a(this.a);
            }
        }
        this.i = NameLoaderState.FINISHED;
    }

    public void onLoaderReset(Loader<Cursor> loader) {
    }

    public void b() {
        if (aj.b(this.a.getText().toString())) {
            this.f.c(this.a.getText().toString());
            this.e.u_();
            return;
        }
        this.a.setError(2131363787);
    }

    public void a(gb gbVar) {
        CharSequence charSequence = gbVar.a;
        if (ad()) {
            this.a.setError(charSequence);
            this.h = null;
            return;
        }
        this.h = gbVar;
    }
}
