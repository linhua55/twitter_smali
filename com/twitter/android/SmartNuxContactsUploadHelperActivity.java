package com.twitter.android;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.android.smartfollow.SmartFollowFlowActivity;
import com.twitter.library.client.d;

/* compiled from: Twttr */
public class SmartNuxContactsUploadHelperActivity extends a {
    public static Intent a(Activity activity) {
        return new Intent(activity, SmartNuxContactsUploadHelperActivity.class).addFlags(AccessibilityNodeInfoCompat.ACTION_CUT);
    }

    public void a(Bundle bundle, d dVar) {
        super.a(bundle, dVar);
        if (bundle == null) {
            a(1, "welcome", false);
        }
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 1 && i2 == -1) {
            ContactsUploadService.a((Context) this, "welcome", false);
        }
        startActivity(SmartFollowFlowActivity.a((Context) this));
        finish();
    }
}
