package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat;
import com.twitter.android.util.am;
import com.twitter.android.util.aq;
import com.twitter.android.util.o;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.ui.widget.TwitterSelection;
import com.twitter.ui.widget.au;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bbu;
import defpackage.bgp;
import defpackage.chs;

/* compiled from: Twttr */
public class PhoneMTEntryFragment extends AbsFragment implements OnClickListener, au {
    private am a;
    private lr b;
    private bs c;
    private TwitterSelection d;
    private EditText e;
    private Button f;
    private Context g;
    private Session h;
    private boolean i;
    private boolean j;
    private final Runnable k;

    public PhoneMTEntryFragment() {
        this.k = new ll(this);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130969173, null);
        Context activity = getActivity();
        this.g = activity.getApplicationContext();
        this.h = bg.a().c();
        this.i = false;
        this.j = false;
        activity.setTitle(2131363284);
        this.a = aq.a(activity);
        this.c = new bs(activity, o.a());
        this.d = (TwitterSelection) inflate.findViewById(2131953031);
        this.d.setSelectedPosition(this.c.a(o.a(activity)));
        this.d.setSelectionAdapter(this.c);
        this.d.setOnSelectionChangeListener(this);
        this.e = (EditText) inflate.findViewById(2131953033);
        this.e.requestFocus();
        h();
        this.f = (Button) inflate.findViewById(2131953034);
        this.e.addTextChangedListener(new lm(this));
        this.e.setText(c());
        if (aj.a(this.e.getText())) {
            this.e.postDelayed(this.k, 500);
        } else {
            this.e.setSelection(this.e.getText().length());
        }
        this.f.setOnClickListener(this);
        bbu.a(new TwitterScribeLog(this.h.g()).b("phone_loggedin_mt", "enter_phone:::impression"));
        inflate.postDelayed(new ln(this), 500);
        return inflate;
    }

    private String c() {
        String str = null;
        PhoneNumberUtil a = PhoneNumberUtil.a();
        try {
            str = a.a(a.a(this.a.h(), null), PhoneNumberFormat.c);
        } catch (NumberParseException e) {
        }
        return str;
    }

    private String f() {
        br a = this.c.a(this.d.getSelectedPosition());
        if (a == null) {
            return null;
        }
        return this.a.a(this.a.b(a.a() + this.e.getText()));
    }

    public void onClick(View view) {
        if (view.getId() == 2131953034) {
            bbu.a(new TwitterScribeLog(this.h.g()).b("phone_loggedin_mt", "enter_phone::continue:click"));
            g();
        }
    }

    private void g() {
        String f = f();
        if (aj.b((CharSequence) f)) {
            c(bgp.a(getActivity(), this.h, f), 1, 0);
        }
    }

    @CallSuper
    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (i == 1) {
            chs s = ((bgp) xVar).s();
            int[] e = ((bgp) xVar).e();
            if (((aa) xVar.l().b()).b() && aj.b(s.a)) {
                ((PhoneMTFlowActivity) getActivity()).a(s.a, s.b);
                return;
            }
            int i3;
            if (CollectionUtils.a(e, 285)) {
                bbu.a(new TwitterScribeLog(aT().g()).b("phone_loggedin_mt", "enter_phone:register_begin::error"));
                i3 = 2131363279;
            } else {
                bbu.a(new TwitterScribeLog(aT().g()).b("phone_loggedin_mt", "enter_phone:register_begin::failure"));
                i3 = 2131363280;
            }
            Toast.makeText(this.g, i3, 1).show();
        }
    }

    void b() {
        if (this.i && this.j) {
            bbu.a(new TwitterScribeLog(this.h.g()).b("phone_loggedin_mt", "enter_phone::phone_number:input"));
            this.i = false;
        }
        this.f.setEnabled(aj.b(f()));
    }

    private void h() {
        PhoneNumberUtil a = PhoneNumberUtil.a();
        this.e.removeTextChangedListener(this.b);
        br a2 = this.c.a(this.d.getSelectedPosition());
        if (a2 != null) {
            this.b = new lr(a.b(a2.b));
        } else {
            this.b = new lr();
        }
        this.e.addTextChangedListener(this.b);
    }

    public void a(TwitterSelection twitterSelection, int i) {
        if (this.j) {
            bbu.a(new TwitterScribeLog(this.h.g()).b("phone_loggedin_mt", "enter_phone::country_code:change"));
        }
        h();
        this.f.setEnabled(aj.b(f()));
    }
}
