package com.twitter.android;

import android.content.Context;
import bbl;
import com.twitter.app.common.account.UserIdentifier;
import com.twitter.app.common.account.a;
import com.twitter.app.common.account.d;
import com.twitter.library.client.Session;
import com.twitter.util.aj;

/* compiled from: Twttr */
class hg extends bbl {
    private hg(Context context, Session session, long j) {
        if (context == null) {
            a("ActiveSessionUserMissing.account_name", "Missing account");
            a("ActiveSessionUserMissing.reason", "Context missing");
            a("ActiveSessionUserMissing.additional_info", "Fragment may have been detached or destroyed");
        } else {
            a a = d.a().a(new UserIdentifier(j));
            if (a == null || aj.a(a.d())) {
                a("ActiveSessionUserMissing.account_name", "Missing account");
                a("ActiveSessionUserMissing.reason", "Cannot find account");
                a("ActiveSessionUserMissing.additional_info", "No matching user id: " + j);
            } else if (!a.d().equalsIgnoreCase(session.e())) {
                a("ActiveSessionUserMissing.account_name", a.d());
                a("ActiveSessionUserMissing.reason", "Session name mismatch");
                a("ActiveSessionUserMissing.additional_info", "Account name: " + a.d() + ", Session name: " + session.e());
            }
        }
        a("ActiveSessionUserMissing.login_status", session.b());
    }
}
