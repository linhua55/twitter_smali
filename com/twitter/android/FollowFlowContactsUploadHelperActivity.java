package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.library.client.d;
import com.twitter.util.object.e;

/* compiled from: Twttr */
public class FollowFlowContactsUploadHelperActivity extends a {
    private FollowFlowController a;
    private boolean b;

    public static Intent a(Activity activity, FollowFlowController followFlowController, boolean z) {
        return new Intent(activity, FollowFlowContactsUploadHelperActivity.class).putExtra("extra_follow_flow_controller", followFlowController).putExtra("extra_is_live_sync_experience", z).addFlags(AccessibilityNodeInfoCompat.ACTION_CUT);
    }

    public void a(Bundle bundle, d dVar) {
        Intent intent = getIntent();
        this.a = (FollowFlowController) e.a(intent.getParcelableExtra("extra_follow_flow_controller"));
        this.b = intent.getBooleanExtra("extra_is_live_sync_experience", false);
        super.a(bundle, dVar);
        if (bundle == null) {
            a(1, this.a.g(), this.a.d("live_sync_experience"));
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1) {
            ContactsUploadService.a((Context) this, this.a.g(), this.b);
        }
        this.a.a((Activity) this);
        finish();
    }
}
