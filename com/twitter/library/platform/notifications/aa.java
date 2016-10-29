package com.twitter.library.platform.notifications;

import android.accounts.Account;
import android.content.Context;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import defpackage.bmm;
import java.util.Set;

/* compiled from: Twttr */
final class aa extends z {
    final /* synthetic */ Set a;
    final /* synthetic */ Account b;
    final /* synthetic */ Context c;

    aa(Set set, Account account, Context context) {
        this.a = set;
        this.b = account;
        this.c = context;
    }

    public void a(x xVar) {
        bmm bmm = (bmm) xVar;
        if (bmm.U()) {
            this.a.add(this.b.name);
        } else if (bmm.b() == 134) {
            PushRegistration.a(this.c, this.b.name, "Device limit exceeded failure when posting push destinations after registration");
        }
    }
}
