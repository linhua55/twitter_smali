package com.twitter.android;

import android.content.Intent;
import com.twitter.android.addressbook.LiveSyncPermissionRequestActivity;
import com.twitter.android.runtimepermissions.b;
import com.twitter.app.common.base.TwitterFragmentActivity;

/* compiled from: Twttr */
abstract class a extends TwitterFragmentActivity {
    a() {
    }

    void a(int i, String str, boolean z) {
        startActivityForResult(a(str, z), i);
    }

    private Intent a(String str, boolean z) {
        String str2 = str + ":import_addressbook::import";
        if (z) {
            return LiveSyncPermissionRequestActivity.a(this, str2);
        }
        return new b(getString(2131362314), this, "android.permission.READ_CONTACTS").a(getString(2131362313)).f(str2).a();
    }
}
