package com.twitter.android.smartfollow.importcontacts;

import android.support.annotation.VisibleForTesting;
import com.twitter.android.smartfollow.b;
import com.twitter.android.smartfollow.m;

/* compiled from: Twttr */
public class a extends b<ImportContactsState, ImportContactsScreen> {
    protected void q() {
        super.q();
        m();
    }

    protected String p() {
        return "import_contacts_screen";
    }

    public void t() {
        m d = d();
        if (d.a(h())) {
            u();
            return;
        }
        d.a(1, new String[]{"android.permission.READ_CONTACTS"});
    }

    public void a(int i, String[] strArr, int[] iArr) {
        if (i != 1) {
            return;
        }
        if (d().a(h())) {
            u();
            return;
        }
        d().a(new String[]{"android.permission.READ_CONTACTS"}, b());
    }

    @VisibleForTesting
    protected void u() {
        super.t();
    }

    public String aF_() {
        return "presenter_import_contacts";
    }
}
