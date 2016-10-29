package com.twitter.android.nativecards.pollcompose;

import android.annotation.TargetApi;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.twitter.library.media.util.x;
import com.twitter.media.ui.image.MediaImageView;
import com.twitter.model.media.EditableImage;
import com.twitter.model.media.EditableMedia;
import com.twitter.ui.widget.TwitterButton;
import com.twitter.util.t;
import cvx;
import defpackage.cgf;
import defpackage.dbg;
import java.util.List;

/* compiled from: Twttr */
public class PollComposeView extends LinearLayout implements q {
    View a;
    ac b;
    private LinearLayout c;
    private Button d;
    private Button e;
    private Animation f;
    private Animation g;
    private View h;
    private TextView i;
    private Button j;
    private MediaImageView k;
    private boolean l;
    private View m;
    private View n;
    private m o;
    private final dbg p;

    public PollComposeView(Context context) {
        super(context);
        this.p = new dbg();
        a(context);
    }

    public PollComposeView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.p = new dbg();
        a(context);
    }

    public PollComposeView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.p = new dbg();
        a(context);
    }

    @TargetApi(21)
    public PollComposeView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.p = new dbg();
        a(context);
    }

    private void a(Context context) {
        LayoutInflater.from(context).inflate(2130969206, this);
        findViewById(2131953085).setOnClickListener(new r(this));
        this.n = findViewById(2131953083);
        this.c = (LinearLayout) findViewById(2131953084);
        this.d = (Button) findViewById(2131953087);
        this.e = (Button) findViewById(2131953088);
        this.m = findViewById(2131953086);
        this.m.setOnClickListener(new u(this));
        this.f = AnimationUtils.loadAnimation(context, 2131034147);
        this.g = AnimationUtils.loadAnimation(context, 2131034148);
        this.h = findViewById(2131953091);
        this.i = (TextView) findViewById(2131953092);
        this.a = findViewById(2131953089);
        this.j = (TwitterButton) findViewById(2131953090);
        this.k = (MediaImageView) findViewById(2131952843);
        this.o = new m();
    }

    public boolean a() {
        return getVisibility() == 0;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.p.a(cvx.c(this.j).c(new v(this)));
        this.p.a(cvx.c(this.h).c(new w(this)));
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.p.c();
    }

    public void b() {
        setVisibility(8);
        this.c.startAnimation(this.g);
    }

    public void setPollComposeViewListener(ac acVar) {
        this.b = acVar;
    }

    public void a(cgf cgf) {
        setVisibility(0);
        this.c.startAnimation(this.f);
        b(cgf);
    }

    public void a(int i, int i2) {
        boolean z = true;
        int i3 = 0;
        View childAt = this.c.getChildAt(i);
        PollChoiceEditText pollChoiceEditText = (PollChoiceEditText) childAt.findViewById(i + AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
        TextView textView = (TextView) childAt.findViewById(i + AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
        pollChoiceEditText.setIsInvalid(i2 < 0);
        textView.setText(t.a(getResources(), (long) i2, false));
        if (i2 < 0) {
            z = false;
        }
        textView.setTextColor(a(z));
        if (!pollChoiceEditText.hasFocus() && i2 >= 0) {
            i3 = 4;
        }
        textView.setVisibility(i3);
        textView.setTag(i2 < 0 ? "choice_error" : null);
    }

    @ColorInt
    private int a(boolean z) {
        if (z || this.l) {
            return getResources().getColor(2131886259);
        }
        return getResources().getColor(2131886285);
    }

    public void c() {
        Context context = getContext();
        new Builder(context).setTitle(context.getString(2131363359)).setMessage(context.getString(2131363358)).setPositiveButton(2131363360, new z(this)).setNegativeButton(2131362041, new y(this)).setOnCancelListener(new x(this)).create().show();
    }

    public void setAddChoiceVisible(boolean z) {
        this.m.setVisibility(z ? 0 : 8);
    }

    public void d() {
        a(this.c.getChildCount(), null).requestFocus();
        e();
    }

    public void a(boolean z, long j) {
        if (z) {
            this.h.setVisibility(0);
            this.i.setText(k.a(j, this.i.getContext()));
            return;
        }
        this.h.setVisibility(8);
    }

    public void a(long j, long j2, long j3) {
        new j(this.h.getContext(), new aa(this), j, j2, j3).show();
    }

    public void setPollAddImageVisible(boolean z) {
        if (z) {
            this.a.setVisibility(0);
        } else {
            this.a.setVisibility(8);
        }
    }

    public void b(cgf cgf) {
        this.c.removeAllViews();
        this.l = cgf.c() != null;
        a(cgf.c());
        a(cgf.a());
    }

    private void a(EditableImage editableImage) {
        if (editableImage != null) {
            this.k.a(x.a(getContext(), (EditableMedia) editableImage));
            this.k.setVisibility(0);
            this.j.setText(2131363356);
            this.d.setVisibility(4);
            this.e.setVisibility(0);
            return;
        }
        this.k.a(null);
        this.k.setVisibility(8);
        this.j.setText(2131363355);
        this.d.setVisibility(0);
        this.e.setVisibility(4);
    }

    private void a(List<String> list) {
        for (int i = 0; i < list.size(); i++) {
            View a = a(i, (String) list.get(i));
            if (i == 0) {
                a.requestFocus();
            }
        }
        e();
    }

    private void e() {
        Drawable a;
        if (this.l) {
            a = this.o.a(this.c, this.c.getChildCount(), getResources().getDimensionPixelSize(2131689861));
        } else {
            a = null;
        }
        this.n.setBackground(a);
    }

    private View a(int i, String str) {
        View inflate = LayoutInflater.from(this.c.getContext()).inflate(this.l ? 2130969208 : 2130969207, null);
        EditText editText = (EditText) inflate.findViewById(2131953093);
        TextView textView = (TextView) inflate.findViewById(2131953094);
        editText.setId(i + AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY);
        textView.setId(i + AccessibilityNodeInfoCompat.ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY);
        editText.setHint(editText.getResources().getString(i <= 1 ? 2131363361 : 2131363362, new Object[]{Integer.valueOf(i + 1)}));
        textView.setVisibility(4);
        editText.addTextChangedListener(new ab(this, i));
        editText.setOnFocusChangeListener(new s(this, textView));
        editText.setOnEditorActionListener(new t(this, editText));
        this.c.addView(inflate);
        if (str != null) {
            editText.setText(str);
        }
        return inflate;
    }
}
