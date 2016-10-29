package com.twitter.android;

import android.accounts.AccountAuthenticatorResponse;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.recyclerview.BuildConfig;
import com.twitter.android.util.AppEventTrack;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.util.b;
import defpackage.bbu;
import defpackage.bbw;
import java.util.regex.Pattern;

/* compiled from: Twttr */
public class iy {
    public static final Pattern a;
    public static final Pattern b;

    static {
        a = Pattern.compile("[0-9]+");
        b = Pattern.compile("^\\+?[0-9\\-\\.\\(\\)\\s]{7,1000}$");
    }

    public static int a(long j, String str) {
        if (str.matches("^[0-9]{7,}$")) {
            a(j, "login:form::identifier:invalid");
            return 2131362953;
        } else if (str.matches("^@?[A-Za-z0-9_]+$")) {
            a(j, "login:form::identifier:invalid_username");
            return 2131362956;
        } else if (b.matcher(str).matches()) {
            a(j, "login:form::identifier:invalid_phone");
            return 2131362955;
        } else if (str.matches("^.+@.+$")) {
            a(j, "login:form::identifier:invalid_email");
            return 2131362954;
        } else {
            a(j, "login:form::identifier:invalid");
            return 2131362953;
        }
    }

    public static void a(Activity activity, boolean z, long j) {
        String str;
        bbw bbw = (TwitterScribeLog) new TwitterScribeLog(j).b("login::::success");
        if (z) {
            bbw.i("sso_sdk");
            str = "switch_account";
        } else {
            str = "logged_out";
        }
        AppEventTrack.a((Context) activity, (TwitterScribeLog) bbw);
        lg.a(activity).a(bbw);
        bbu.a(bbw);
        a(j, "login", BuildConfig.VERSION_NAME, str, BuildConfig.VERSION_NAME, "success");
    }

    public static void a(Activity activity, Session session, boolean z, String str, bg bgVar) {
        Intent intent = activity.getIntent();
        if (z) {
            AccountAuthenticatorResponse accountAuthenticatorResponse = (AccountAuthenticatorResponse) intent.getParcelableExtra("accountAuthenticatorResponse");
            io.a((Context) activity);
            if (accountAuthenticatorResponse != null) {
                Bundle bundle = new Bundle();
                bundle.putString("authAccount", session.e());
                bundle.putString("accountType", b.a);
                bundle.putString("account_user_info", str);
                accountAuthenticatorResponse.onResult(bundle);
            }
            bgVar.c(session);
            bp.a();
        }
    }

    public static void a(long j, String... strArr) {
        bbu.a(new TwitterScribeLog(j).b(strArr));
    }
}
