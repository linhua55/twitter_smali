package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import android.widget.Toast;
import com.twitter.android.FlowData.SignupState;
import com.twitter.android.client.bm;
import com.twitter.android.client.bz;
import com.twitter.library.api.ak;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.service.ab;
import com.twitter.library.service.x;
import com.twitter.library.util.ae;
import com.twitter.util.aj;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bbu;
import defpackage.bgp;
import defpackage.bnf;
import defpackage.bng;
import defpackage.bpo;
import defpackage.chs;
import java.lang.ref.WeakReference;
import tv.periscope.chatman.api.ControlMessage;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class qi extends aq implements bb {
    private final WeakReference<FlowActivity> c;

    qi(FlowActivity flowActivity, boolean z) {
        super(flowActivity.getApplicationContext(), z);
        this.c = new WeakReference(flowActivity);
        this.b = z;
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        CharSequence charSequence = null;
        Context context = (FlowActivity) this.c.get();
        if (context != null) {
            context.v();
            boolean U = xVar.U();
            int[] e;
            TwitterScribeLog twitterScribeLog;
            String[] strArr;
            switch (i) {
                case WireMessage.WIRE_CHAT /*1*/:
                case WireMessage.WIRE_AUTH /*3*/:
                    int i2;
                    e = ((bnf) xVar).e();
                    if (U || e == null) {
                        i2 = 0;
                    } else {
                        String string;
                        CharSequence charSequence2;
                        if (CollectionUtils.a(e, 285)) {
                            string = context.getString(2131363792);
                            charSequence2 = null;
                            i2 = 0;
                        } else if (CollectionUtils.a(e, 287)) {
                            string = null;
                            charSequence2 = null;
                            boolean z = true;
                        } else if (CollectionUtils.a(e, 295)) {
                            charSequence2 = context.getString(2131363717);
                            string = null;
                            i2 = 0;
                        } else {
                            charSequence2 = context.getString(2131363792);
                            string = null;
                            i2 = 0;
                        }
                        if (aj.b(charSequence2)) {
                            Toast.makeText(context, charSequence2, 1).show();
                        }
                        if (string != null) {
                            context.a(new gb(null, null, string, null, null, null));
                        }
                    }
                    if (i2 != 0) {
                        context.a(SignupState.SIGN_UP_PHONE_VERIFIED);
                        context.t();
                    } else if (U) {
                        context.a(SignupState.SIGN_UP_IN_PROGRESS);
                        bm.a(this.a).a("sign_up");
                        if (i == 1) {
                            context.u_();
                        }
                    }
                case WireMessage.WIRE_CONTROL /*2*/:
                    if (U) {
                        context.a(SignupState.SIGN_UP_PHONE_VERIFIED);
                        context.t();
                        bbu.a(new TwitterScribeLog(bg.a().c().g()).b(context.T_(), "phone_verification", qh.a(this.b), "complete", "success"));
                        return;
                    }
                    Object string2;
                    e = ((bng) xVar).e();
                    if (e == null) {
                        string2 = context.getString(2131363792);
                    } else if (CollectionUtils.a(e, 294)) {
                        string2 = context.getString(2131363321);
                    } else {
                        string2 = context.getString(2131363792);
                    }
                    Toast.makeText(context, string2, 1).show();
                    context.a(new gb(null, null, null, null, null, string2));
                case ControlMessage.CONTROL_PRESENCE /*4*/:
                case mx.UserView_actionButtonPaddingRight /*5*/:
                    chs s = ((bgp) xVar).s();
                    if (s == null) {
                        CharSequence charSequence3 = null;
                    } else {
                        Object obj = s.a;
                    }
                    e = ((bgp) xVar).e();
                    if (xVar.U() && aj.b(r3)) {
                        String str;
                        if (i == 4) {
                            context.u_();
                        } else {
                            charSequence = context.getString(2131363728);
                        }
                        twitterScribeLog = new TwitterScribeLog(bg.a().c().g());
                        strArr = new String[5];
                        strArr[0] = context.T_();
                        strArr[1] = "phone_verification";
                        if (this.b) {
                            str = "switch_account";
                        } else {
                            str = "logged_out";
                        }
                        strArr[2] = str;
                        strArr[3] = "begin";
                        strArr[4] = "success";
                        bbu.a(twitterScribeLog.b(strArr));
                    } else if (e != null && CollectionUtils.a(e, 285)) {
                        charSequence = context.getString(2131363716);
                    } else if (e != null && CollectionUtils.a(e, 299)) {
                        charSequence = context.getString(2131363717);
                    } else if (i == 4) {
                        context.a(new gb(null, null, context.getString(2131363265), null, null, null));
                    } else {
                        charSequence = context.getString(2131363727);
                    }
                    if (aj.b(charSequence)) {
                        Toast.makeText(context, charSequence, 1).show();
                    }
                case mx.UserView_actionButtonPaddingBottom /*6*/:
                    if (((aa) xVar.l().b()).b()) {
                        ae.a(context).a(true, true);
                        ab N = xVar.N();
                        if (N != null) {
                            az.a(context).a(new bpo(context, N, N.c, N.e));
                            twitterScribeLog = new TwitterScribeLog(N.c);
                            strArr = new String[5];
                            strArr[0] = context.T_();
                            strArr[1] = "create";
                            strArr[2] = this.b ? "switch_account" : "logged_out";
                            strArr[3] = null;
                            strArr[4] = "success";
                            bbu.a(twitterScribeLog.b(strArr));
                        }
                        context.u_();
                        return;
                    }
                    CharSequence string3 = context.getString(2131363321);
                    context.a(new gb(null, null, null, null, null, string3));
                    Toast.makeText(context, string3, 1).show();
                default:
            }
        }
    }

    public void a(Session session, String str) {
        super.a(session, str);
        FlowActivity flowActivity = (FlowActivity) this.c.get();
        if (flowActivity != null) {
            TwitterScribeLog twitterScribeLog = new TwitterScribeLog(session.g());
            String[] strArr = new String[5];
            strArr[0] = flowActivity.T_();
            strArr[1] = "create";
            strArr[2] = this.b ? "switch_account" : "logged_out";
            strArr[3] = null;
            strArr[4] = "success";
            bbu.a(twitterScribeLog.b(strArr));
            flowActivity.v();
            flowActivity.a(SignupState.SIGN_UP_COMPLETE);
            flowActivity.g(true);
            flowActivity.g(session.e());
            flowActivity.i(session.e());
            flowActivity.x();
            if (flowActivity.j()) {
                ae.a(flowActivity.getApplicationContext()).a(true, true);
            }
            if (bz.a(session.f())) {
                flowActivity.y();
            }
        }
    }

    public void a(Session session, int i, int i2, ak akVar) {
        FlowActivity flowActivity = (FlowActivity) this.c.get();
        if (flowActivity != null) {
            flowActivity.v();
            if (i == 2) {
                flowActivity.u();
            } else if (akVar != null) {
                flowActivity.a(gb.a(akVar));
            } else {
                Toast.makeText(flowActivity, 2131363784, 1).show();
            }
        }
    }

    public void a(Session session, ak akVar) {
    }
}
