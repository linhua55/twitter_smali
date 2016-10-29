package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.CallSuper;
import android.support.v7.recyclerview.BuildConfig;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.twitter.android.client.c;
import com.twitter.app.common.base.g;
import com.twitter.library.client.AbsFragment;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.util.ae;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import com.twitter.util.ui.r;
import defpackage.bbu;
import defpackage.bgp;
import defpackage.bgq;
import defpackage.bpo;
import defpackage.chs;

/* compiled from: Twttr */
public class PhoneMTVerifyFragment extends AbsFragment implements OnClickListener {
    private EditText a;
    private Button b;
    private TextView c;
    private String d;
    private boolean e;
    private Context f;
    private c g;
    private Session h;
    private boolean i;
    private final Runnable j;

    public PhoneMTVerifyFragment() {
        this.d = null;
        this.e = false;
        this.i = true;
        this.j = new lp(this);
    }

    public View a(LayoutInflater layoutInflater, Bundle bundle) {
        View inflate = layoutInflater.inflate(2130969175, null);
        this.f = getActivity().getApplicationContext();
        this.g = c.a(getActivity());
        this.h = bg.a().c();
        getActivity().setTitle(2131363291);
        g o = o();
        this.d = o.f("verify_phone_number");
        this.e = o.a("is_verizon", false);
        this.a = (EditText) inflate.findViewById(2131953037);
        this.a.addTextChangedListener(new lq(this));
        this.b = (Button) inflate.findViewById(2131953038);
        this.b.setOnClickListener(this);
        this.c = (TextView) inflate.findViewById(2131953039);
        this.c.setOnClickListener(this);
        TextView textView = (TextView) inflate.findViewById(2131953036);
        Object[] objArr = new Object[1];
        objArr[0] = this.d == null ? BuildConfig.VERSION_NAME : this.d.substring(this.d.length() - 2);
        textView.setText(getString(2131363286, objArr));
        this.a.post(this.j);
        bbu.a(new TwitterScribeLog(this.h.g()).b("phone_loggedin_mt", "enter_code:::impression"));
        return inflate;
    }

    public void onClick(View view) {
        if (view.getId() == 2131953038) {
            bbu.a(new TwitterScribeLog(this.h.g()).b("phone_loggedin_mt", "enter_code::continue:click"));
            r.b(getActivity(), this.a, false);
            f();
        } else if (view.getId() == 2131953039) {
            bbu.a(new TwitterScribeLog(this.h.g()).b("phone_loggedin_mt", "enter_code::resend:click"));
            c();
        }
    }

    private void c() {
        if (aj.b(this.d)) {
            c(bgp.a(getActivity(), this.h, this.d), 1, 0);
            this.c.setText(2131363290);
        }
    }

    private void f() {
        String obj = this.a.getText().toString();
        if (obj.startsWith("/")) {
            obj = obj.substring("/".length());
        }
        c(bgq.a(getActivity(), this.h, this.d, obj, this.e), 2, 0);
    }

    @CallSuper
    protected void a(x xVar, int i, int i2) {
        super.a(xVar, i, i2);
        if (i == 1) {
            chs s = ((bgp) xVar).s();
            int[] e = ((bgp) xVar).e();
            if (!((aa) xVar.l().b()).b() || aj.a(s.a)) {
                int i3;
                if (CollectionUtils.a(e, 285)) {
                    i3 = 2131363279;
                } else {
                    i3 = 2131363280;
                }
                Toast.makeText(this.f, i3, 1).show();
            }
            if (this.c != null) {
                this.c.setText(2131363289);
            }
        } else if (i == 2) {
            ab N = xVar.N();
            long j = N != null ? N.c : 0;
            Context activity = getActivity();
            if (((aa) xVar.l().b()).b()) {
                ae.a(this.T).a(true, true);
                bbu.a(new TwitterScribeLog(j).b("phone_loggedin_mt", "enter_code:verify_code::success"));
                if (N != null) {
                    this.aa.a(new bpo(activity, N, j, N.e));
                }
                if (activity instanceof lo) {
                    ((PhoneMTFlowActivity) activity).a();
                    return;
                }
                return;
            }
            bbu.a(new TwitterScribeLog(j).b("phone_loggedin_mt", "enter_code:verify_code::failure"));
            Toast.makeText(this.f, 2131363288, 1).show();
        }
    }

    void b() {
        boolean z = true;
        if (this.i) {
            bbu.a(new TwitterScribeLog(this.h.g()).b("phone_loggedin_mt", "enter_code::code:input"));
            this.i = false;
        }
        Button button = this.b;
        if (!(aj.b(this.d) && aj.b(this.a.getText()))) {
            z = false;
        }
        button.setEnabled(z);
    }
}
