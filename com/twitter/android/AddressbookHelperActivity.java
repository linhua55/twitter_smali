package com.twitter.android;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.twitter.android.people.PeopleDiscoveryActivity;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.library.client.d;
import defpackage.buc;

/* compiled from: Twttr */
public class AddressbookHelperActivity extends TwitterFragmentActivity {
    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        overridePendingTransition(0, 0);
        if (buc.a()) {
            new FollowFlowController("people_discovery").a(true).h().a(new Intent(this, PeopleDiscoveryActivity.class)).c((Activity) this);
        } else {
            Intent intent = getIntent();
            if ("find_friends".equals(intent.getAction())) {
                startActivity(new Intent(this, DialogActivity.class).putExtra("scribe_page", intent.getStringExtra("extra_scribe_page")).setAction("find_friends").setFlags(268435456));
            }
        }
        finish();
    }
}
