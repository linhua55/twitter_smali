package com.twitter.android;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class BackupCodeActivity extends TwitterFragmentActivity {
    public t a(Bundle bundle, t tVar) {
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        CharSequence stringExtra = getIntent().getStringExtra("bc_account_name");
        long longExtra = getIntent().getLongExtra("bc_account_id", 0);
        boolean booleanExtra = getIntent().getBooleanExtra("show_welcome", false);
        setTitle(getString(2131363002));
        if (bundle == null) {
            Fragment backupCodeFragment = new BackupCodeFragment();
            j jVar = (j) j.a(getIntent()).h(false);
            if (aj.b(stringExtra)) {
                ((j) ((j) jVar.b("bc_account_name", stringExtra)).a("show_welcome", booleanExtra)).a("bc_account_id", longExtra);
            }
            backupCodeFragment.a(jVar.b());
            getSupportFragmentManager().beginTransaction().add(2131951923, backupCodeFragment).commit();
        }
    }
}
