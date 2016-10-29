package com.twitter.android;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.os.Build.VERSION;
import android.view.Window;
import com.twitter.app.common.base.g;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.util.aj;
import java.math.BigInteger;
import java.security.SecureRandom;

/* compiled from: Twttr */
public class qh {
    public static boolean a(Context context) {
        if (!d.a("mandatory_phone_signup_password_step_resume")) {
            return false;
        }
        CharSequence e = bg.a().c().e();
        if (aj.b(FlowData.f(context)) && aj.b(e) && e.equals(FlowData.e(context))) {
            return true;
        }
        return false;
    }

    @SuppressLint({"TrulyRandom"})
    public static String a() {
        return new BigInteger(100, new SecureRandom()).toString(32);
    }

    public static void a(Activity activity) {
        if (VERSION.SDK_INT >= 21) {
            Window window = activity.getWindow();
            window.addFlags(RtlSpacingHelper.UNDEFINED);
            window.setStatusBarColor(activity.getResources().getColor(17170444));
        }
    }

    public static boolean a(g gVar) {
        FlowData flowData = (FlowData) gVar.h("extra_flow_data");
        return gVar.a("extra_flow_data") && flowData != null && flowData.h();
    }

    public static String a(boolean z) {
        return z ? "switch_account" : "logged_out";
    }
}
