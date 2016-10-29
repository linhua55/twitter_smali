package com.twitter.android;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.twitter.app.common.base.BaseFragmentActivity;
import tv.periscope.android.library.k;

/* compiled from: Twttr */
public class DiskCleanupPromptActivity extends BaseFragmentActivity {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(2130969541);
        findViewById(k.buttons_container).setVisibility(8);
    }

    protected void onStart() {
        super.onStart();
        OnClickListener efVar = new ef(this);
        new Builder(this).setMessage(2131362665).setPositiveButton(2131362011, efVar).setNegativeButton(2131363607, efVar).setCancelable(false).create().show();
    }
}
