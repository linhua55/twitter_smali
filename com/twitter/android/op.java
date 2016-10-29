package com.twitter.android;

import android.view.View;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import com.twitter.library.client.bg;
import com.twitter.library.widget.SlidingPanel;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class op {
    public final RadioGroup a;
    public final RadioButton b;
    public final RadioButton c;
    public final RadioButton d;
    public final RadioButton e;
    public final RadioButton f;
    public final RadioButton g;
    public final RadioGroup h;
    public final RadioButton i;
    public final RadioButton j;
    public final RadioGroup k;
    public final RadioButton l;
    public final RadioButton m;
    public final View n;
    public final View o;
    public final View p;
    private final OnCheckedChangeListener q;

    op(SlidingPanel slidingPanel, OnCheckedChangeListener onCheckedChangeListener) {
        this.a = (RadioGroup) slidingPanel.findViewById(2131953246);
        this.b = (RadioButton) slidingPanel.findViewById(2131953247);
        this.c = (RadioButton) slidingPanel.findViewById(2131953248);
        this.d = (RadioButton) slidingPanel.findViewById(2131953249);
        this.e = (RadioButton) slidingPanel.findViewById(2131953250);
        this.f = (RadioButton) slidingPanel.findViewById(2131953252);
        this.g = (RadioButton) slidingPanel.findViewById(2131953253);
        this.h = (RadioGroup) slidingPanel.findViewById(2131953254);
        this.i = (RadioButton) slidingPanel.findViewById(2131953255);
        this.j = (RadioButton) slidingPanel.findViewById(2131953256);
        this.k = (RadioGroup) slidingPanel.findViewById(2131953257);
        this.l = (RadioButton) slidingPanel.findViewById(2131953258);
        this.m = (RadioButton) slidingPanel.findViewById(2131953259);
        this.n = slidingPanel.findViewById(2131953260);
        this.o = slidingPanel.findViewById(2131953263);
        this.p = slidingPanel.findViewById(2131953262);
        this.a.setOnCheckedChangeListener(onCheckedChangeListener);
        this.h.setOnCheckedChangeListener(onCheckedChangeListener);
        this.k.setOnCheckedChangeListener(onCheckedChangeListener);
        this.q = onCheckedChangeListener;
    }

    public void a(int i, boolean z, boolean z2) {
        this.a.setOnCheckedChangeListener(null);
        this.h.setOnCheckedChangeListener(null);
        this.k.setOnCheckedChangeListener(null);
        switch (i) {
            case WireMessage.WIRE_CONTROL /*2*/:
                this.g.setChecked(true);
                break;
            case WireMessage.WIRE_AUTH /*3*/:
                this.c.setChecked(true);
                break;
            case ControlMessage.CONTROL_PRESENCE /*4*/:
            case mx.UserView_actionButtonPaddingRight /*5*/:
                this.d.setChecked(true);
                break;
            case mx.UserView_actionButtonPaddingBottom /*6*/:
                this.f.setChecked(true);
                break;
            case mx.TwitterEditText_characterCounterColor /*12*/:
            case mx.TwitterEditText_characterCounterMode /*13*/:
                this.e.setChecked(true);
                break;
            default:
                this.b.setChecked(true);
                break;
        }
        if (z) {
            this.j.setChecked(true);
        } else {
            this.i.setChecked(true);
        }
        if (z2) {
            this.m.setChecked(true);
        } else {
            this.l.setChecked(true);
        }
        this.a.setOnCheckedChangeListener(this.q);
        this.h.setOnCheckedChangeListener(this.q);
        this.k.setOnCheckedChangeListener(this.q);
    }

    public void a(boolean z) {
        if (z) {
            this.n.setVisibility(8);
            if (bg.a().c().d()) {
                this.h.setVisibility(0);
            }
            this.k.setVisibility(0);
            this.o.setVisibility(0);
            this.p.setVisibility(0);
            return;
        }
        this.n.setVisibility(0);
        this.h.setVisibility(8);
        this.k.setVisibility(8);
        this.o.setVisibility(8);
        this.p.setVisibility(8);
    }
}
