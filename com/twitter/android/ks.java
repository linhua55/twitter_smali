package com.twitter.android;

import android.content.Context;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableString;
import com.twitter.android.widget.PromptDialogFragment;
import com.twitter.android.widget.ec;
import com.twitter.app.common.base.m;
import com.twitter.library.client.az;
import com.twitter.library.client.bb;
import com.twitter.library.client.bg;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.model.login.OneFactorEligibleFactor.FactorType;
import com.twitter.model.login.a;
import defpackage.beo;
import defpackage.zs;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class ks implements bb {
    final Context a;
    final ku b;
    final FactorType c;

    public ks(Context context, ku kuVar, FactorType factorType) {
        this.a = context;
        this.b = kuVar;
        this.c = factorType;
    }

    public void a(String str) {
        if (zs.a(this.c) != null) {
            String str2;
            az.a(this.a).a(new beo(this.a, bg.a().c(), str, zs.a(this.c)), 1, (bb) this);
            if (this.c == FactorType.EMAIL) {
                str2 = "send_email";
            } else if (this.c == FactorType.SMS) {
                str2 = "send_sms";
            } else {
                str2 = null;
            }
            if (str2 != null) {
                a(str2, "attempt");
            } else {
                a("unknown_request", "failure");
            }
        }
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        if (i == 1) {
            String str;
            String str2;
            beo beo = (beo) xVar;
            a e = beo.e();
            switch (kt.a[this.c.ordinal()]) {
                case WireMessage.WIRE_CHAT /*1*/:
                    str = "send_email";
                    break;
                case WireMessage.WIRE_CONTROL /*2*/:
                    str = "send_sms";
                    break;
                default:
                    str = null;
                    break;
            }
            if (!beo.U() || e == null) {
                int i2;
                int[] a = an.a(((aa) xVar.l().b()).c);
                if (a != null && a.length > 0) {
                    switch (a[0]) {
                        case 246:
                            i2 = 2131362973;
                            break;
                        default:
                            i2 = 2131362972;
                            break;
                    }
                }
                i2 = 2131362972;
                this.b.a(i2);
                str2 = "failure";
            } else if (this.c != FactorType.OTHER) {
                this.b.a(this.c, e);
                str2 = "success";
            } else {
                this.b.a(2131362972);
                str2 = "failure";
            }
            if (str == null || str2 == null) {
                a("unknown_response", "failure");
            } else {
                a(str, str2);
            }
        }
    }

    public static PromptDialogFragment a(Context context, int i, String str, m mVar) {
        CharSequence spannableString = new SpannableString(Html.fromHtml(context.getString(2131362977, new Object[]{str})));
        a("login::1fa_send_sms_confirm_dialog::impression");
        return (PromptDialogFragment) ((ec) ((ec) ((ec) new ec(i).d(2131363218)).f(2131362041)).a(spannableString)).i().a(mVar);
    }

    private static void a(String str, String str2) {
        bg.a().c().g();
        a("login::1fa_eligible_sheet", str, str2);
    }

    public static void a(String... strArr) {
        iy.a(bg.a().c().g(), strArr);
    }
}
