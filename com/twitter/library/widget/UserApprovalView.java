package com.twitter.library.widget;

import android.content.Context;
import android.support.annotation.DrawableRes;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import bcx;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

/* compiled from: Twttr */
public class UserApprovalView extends BaseUserView implements OnClickListener {
    private e<UserApprovalView> r;
    private bh s;
    private bh t;
    private ActionButton u;
    private View v;
    private boolean w;

    public UserApprovalView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.w = true;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        FrameLayout frameLayout = (FrameLayout) findViewById(bcx.action_button_accept_frame);
        this.s = new bh((ImageButton) frameLayout.getChildAt(0), frameLayout);
        frameLayout = (FrameLayout) findViewById(bcx.action_button_deny_frame);
        this.t = new bh((ImageButton) frameLayout.getChildAt(0), frameLayout);
        this.v = findViewById(bcx.action_button_frame);
        this.u = (ActionButton) findViewById(bcx.action_button);
    }

    protected void drawableStateChanged() {
        super.drawableStateChanged();
        this.s.a.setImageState(getDrawableState(), true);
        this.t.a.setImageState(getDrawableState(), true);
    }

    public void a(String str, String str2) {
        super.a(str, str2);
        this.u.setUsername(str);
    }

    public void a(int i, boolean z) {
        bh b = b(i);
        if (b != null) {
            b.c = z;
            refreshDrawableState();
        }
    }

    public boolean a(int i) {
        if (i == 2) {
            return this.u.isChecked();
        }
        bh b = b(i);
        return b != null && b.c;
    }

    public void a(int i, @DrawableRes int i2, e<UserApprovalView> eVar) {
        if (i == 2) {
            this.u.a(i2);
            this.u.setOnClickListener(this);
            return;
        }
        bh b = b(i);
        ImageButton imageButton = b.a;
        FrameLayout frameLayout = b.b;
        if (i2 == 0) {
            frameLayout.setVisibility(8);
            return;
        }
        imageButton.setOnClickListener(this);
        imageButton.setImageResource(i2);
        frameLayout.setVisibility(0);
        frameLayout.setOnClickListener(this);
        this.r = eVar;
    }

    public void a(int i, int i2) {
        View view = i == 2 ? this.u : b(i).a;
        if (i2 > 0) {
            view.setBackgroundResource(i2);
            view.setPadding(this.d_, this.b, this.c, this.d);
        }
    }

    public void onClick(View view) {
        if (this.r != null) {
            int id = view.getId();
            if (id == bcx.action_button_deny || id == bcx.action_button_deny_frame) {
                setState(2);
                g();
            } else if (id == bcx.action_button_accept || id == bcx.action_button_accept_frame) {
                setState(1);
                if (this.w) {
                    d();
                } else {
                    g();
                }
            } else if (id == bcx.action_button || id == bcx.action_button_frame) {
                a(0, true);
                a(1, false);
                this.u.toggle();
            }
            this.r.a(this, this.f, id, -1);
        }
    }

    public void setState(int i) {
        switch (i) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                a(0, true);
                a(1, false);
                this.u.setChecked(false);
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                a(0, false);
                a(1, true);
                this.u.setChecked(false);
            case Util.TYPE_OTHER /*3*/:
                a(0, true);
                a(1, false);
                this.u.setChecked(true);
            default:
                a(0, false);
                a(1, false);
                this.u.setChecked(false);
        }
    }

    private bh b(int i) {
        switch (i) {
            case Util.TYPE_DASH /*0*/:
                return this.s;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return this.t;
            default:
                return null;
        }
    }

    public void c() {
        this.s.b.setVisibility(0);
        this.t.b.setVisibility(0);
        this.v.setVisibility(8);
    }

    public void d() {
        this.s.b.setVisibility(8);
        this.t.b.setVisibility(8);
        this.v.setVisibility(0);
        this.u.setVisibility(0);
    }

    public void g() {
        this.s.b.setVisibility(4);
        this.t.b.setVisibility(4);
        this.u.setVisibility(8);
    }
}
