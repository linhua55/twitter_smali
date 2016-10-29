package com.twitter.android.communities.member;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.widget.Toast;
import com.twitter.app.common.base.TwitterFragmentActivity;
import com.twitter.app.common.base.t;
import com.twitter.config.d;
import defpackage.cfb;

/* compiled from: Twttr */
public class CommunityMembersActivity extends TwitterFragmentActivity {
    private static final String a;
    private long b;

    static {
        a = CommunityMembersActivity.class.getSimpleName();
    }

    public static Intent a(Context context, long j) {
        Intent intent = new Intent(context, CommunityMembersActivity.class);
        intent.putExtra("community_id", j);
        return intent;
    }

    private static boolean c() {
        return d.a("communities_experience_enabled");
    }

    public void b(Bundle bundle, t tVar) {
        super.b(bundle, tVar);
        if (c()) {
            a(getIntent().getExtras());
            Toast.makeText(this, "TODO: Community members for " + this.b, 1).show();
            return;
        }
        cfb.b(a, "Communities are not supported. Exiting.");
        finish();
    }

    private void a(Bundle bundle) {
        if (bundle == null || !bundle.containsKey("community_id")) {
            throw new IllegalStateException("CommunityMembersActivity require community id, but there is none.");
        }
        this.b = bundle.getLong("community_id");
    }
}
