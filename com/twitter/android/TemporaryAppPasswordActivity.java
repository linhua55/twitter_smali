package com.twitter.android;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class TemporaryAppPasswordActivity extends TwitterFragmentActivity {
    public t a(Bundle bundle, t tVar) {
        tVar.a(false);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        CharSequence stringExtra = getIntent().getStringExtra("account_name");
        long longExtra = getIntent().getLongExtra("account_id", 0);
        setTitle(getString(2131363941));
        if (bundle == null) {
            Fragment temporaryAppPasswordFragment = new TemporaryAppPasswordFragment();
            j jVar = (j) j.a(getIntent()).h(false);
            if (aj.b(stringExtra)) {
                ((j) jVar.b("account_name", stringExtra)).a("account_id", longExtra);
            }
            temporaryAppPasswordFragment.a(jVar.b());
            getSupportFragmentManager().beginTransaction().add(2131951923, temporaryAppPasswordFragment).commit();
        }
    }
}
