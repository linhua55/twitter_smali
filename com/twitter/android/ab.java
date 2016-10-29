package com.twitter.android;

import android.os.Bundle;
import android.widget.TextView;
import com.twitter.library.service.aa;
import com.twitter.library.service.ac;
import com.twitter.model.account.LoginResponse;
import defpackage.beh;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
class ab extends ac<Bundle, beh> {
    final /* synthetic */ AuthenticatorActivity a;

    ab(AuthenticatorActivity authenticatorActivity) {
        this.a = authenticatorActivity;
    }

    public void a(beh beh) {
        com.twitter.internal.android.service.ab l = beh.l();
        this.a.removeDialog(1);
        if (((aa) l.b()).b()) {
            LoginResponse s = beh.s();
            if (s == null || s.a == null) {
                ((TextView) this.a.findViewById(k.message)).setText(this.a.getText(2131361936));
                return;
            } else if (this.a.a.booleanValue()) {
                this.a.a(s.a, true);
                return;
            } else {
                this.a.a(s.a);
                return;
            }
        }
        ((TextView) this.a.findViewById(k.message)).setText(this.a.getText(2131361936));
    }
}
