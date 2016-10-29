package com.twitter.android.settings;

import bpk;
import com.twitter.library.service.aa;
import com.twitter.library.service.x;
import com.twitter.library.service.z;
import com.twitter.util.collection.CollectionUtils;
import defpackage.bon;
import defpackage.bpl;
import defpackage.bpn;
import java.lang.ref.WeakReference;
import java.util.List;

/* compiled from: Twttr */
class f extends z {
    private final WeakReference<AccountActivity> a;

    f(AccountActivity accountActivity) {
        this.a = new WeakReference(accountActivity);
    }

    public void a(x xVar) {
        AccountActivity accountActivity = (AccountActivity) this.a.get();
        if (accountActivity != null) {
            bon bon = (bon) xVar;
            aa aaVar = (aa) bon.l().b();
            if (aaVar == null || !aaVar.b()) {
                a(accountActivity, bon);
            } else {
                a(accountActivity, bon.e());
            }
        }
    }

    private void a(AccountActivity accountActivity, bpl bpl) {
        b(accountActivity, bpl.b());
        a(accountActivity, bpl.a());
        accountActivity.c("email_phone_info::success");
    }

    private void a(AccountActivity accountActivity, List<bpk> list) {
        if (list.isEmpty() || !accountActivity.c()) {
            accountActivity.a(null, false);
            return;
        }
        bpk bpk = (bpk) list.get(list.size() - 1);
        accountActivity.a(bpk.a(), !bpk.b().booleanValue());
    }

    private void b(AccountActivity accountActivity, List<bpn> list) {
        if (list.isEmpty() || !accountActivity.b()) {
            accountActivity.a(null);
            return;
        }
        for (bpn bpn : list) {
            if (bpn.b().booleanValue()) {
                accountActivity.a(bpn.a());
                return;
            }
        }
    }

    private void a(AccountActivity accountActivity, bon bon) {
        int[] b = bon.b();
        if (b == null || !CollectionUtils.a(b, 88)) {
            accountActivity.c("email_phone_info::generic");
        } else {
            accountActivity.c("email_phone_info::rate_limit");
        }
    }
}
