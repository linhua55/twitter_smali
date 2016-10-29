package com.twitter.android.commerce.view;

import android.os.Bundle;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.library.client.d;

/* compiled from: Twttr */
public class OrderHistoryActivity extends TwitterFragmentActivity {
    public t a(Bundle bundle, t tVar) {
        tVar.a(true);
        return tVar;
    }

    public void b(Bundle bundle, t tVar) {
        setTitle(getString(2131362199));
        if (bundle == null) {
            getSupportFragmentManager().beginTransaction().add(2131951923, new OrderHistoryFragment()).commit();
        }
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        h(false);
    }
}
