package com.twitter.android;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.app.common.list.j;
import com.twitter.util.aj;

/* compiled from: Twttr */
public class LoginVerificationActivity extends TwitterFragmentActivity {
    public void b(Bundle bundle, t tVar) {
        CharSequence stringExtra = getIntent().getStringExtra("lv_account_name");
        setTitle(getString(2131363014));
        if (bundle == null) {
            Fragment loginVerificationFragment = new LoginVerificationFragment();
            j jVar = (j) ((j) j.a(getIntent()).b(2131363020)).h(true);
            if (aj.b(stringExtra)) {
                jVar.b("lv_account_name", stringExtra);
            }
            loginVerificationFragment.a(jVar.b());
            getSupportFragmentManager().beginTransaction().add(2131951923, loginVerificationFragment).commit();
        }
    }
}
