package com.twitter.android.revenue.card;

import android.app.Activity;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import caw;
import cly;
import cmb;
import com.twitter.library.widget.tweet.content.DisplayMode;
import com.twitter.ui.widget.TwitterEditText;
import com.twitter.util.aj;
import defpackage.bct;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
public class ai extends ac implements TextWatcher, OnEditorActionListener {
    private static final int[] g;
    private final boolean h;
    private final TwitterEditText i;
    private final WeakReference<Activity> j;

    static {
        g = new int[]{bct.state_validated};
    }

    ai(Activity activity, DisplayMode displayMode, boolean z) {
        super(activity, displayMode);
        this.j = new WeakReference(activity);
        this.h = z;
        this.i = (TwitterEditText) this.a.findViewById(2131952882);
        if (z) {
            this.i.setOnEditorActionListener(this);
            this.i.addTextChangedListener(this);
            this.i.setError(2131362856);
            return;
        }
        this.i.setVisibility(8);
    }

    public void a(long j, cmb cmb) {
        super.a(j, cmb);
        if (this.h) {
            CharSequence a = caw.a("promotion_zipcode", cmb);
            if (aj.b(a)) {
                this.i.setText(a);
            }
        }
    }

    protected int h() {
        return 2130969091;
    }

    protected int i() {
        if (this.h) {
            return 2131363769;
        }
        return super.i();
    }

    protected aa j() {
        return new aa(this.q, this.c, k(), this.w, this);
    }

    protected void a(cly cly) {
        super.a(cly);
        cly.a("promotion_zipcode", k());
    }

    public void a(long j, cly cly) {
        super.a(j, cly);
        if (this.h) {
            this.i.setText(caw.a("promotion_zipcode", cly));
        }
    }

    private String k() {
        if (aj.a(this.i.getText())) {
            return null;
        }
        return this.i.getText().toString().trim();
    }

    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            p();
        }
        return false;
    }

    protected void a(View view, MotionEvent motionEvent) {
        p();
        super.a(view, motionEvent);
    }

    private void p() {
        Activity activity = (Activity) this.j.get();
        if (activity != null && activity.getCurrentFocus() != null) {
            ((InputMethodManager) this.q.getSystemService("input_method")).hideSoftInputFromWindow(activity.getCurrentFocus().getWindowToken(), 2);
        }
    }

    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    public void afterTextChanged(Editable editable) {
        if (aj.a(editable)) {
            this.i.setError(2131362856);
            this.i.setExtraState(null);
            this.b.setEnabled(false);
            return;
        }
        this.i.e();
        this.i.setExtraState(g);
        this.b.setEnabled(true);
    }
}
