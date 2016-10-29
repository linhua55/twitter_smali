package com.twitter.android;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

/* compiled from: Twttr */
class ef implements OnClickListener {
    final /* synthetic */ DiskCleanupPromptActivity a;

    ef(DiskCleanupPromptActivity diskCleanupPromptActivity) {
        this.a = diskCleanupPromptActivity;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (-1 == i) {
            System.exit(0);
        } else if (-2 == i) {
            Intent intent = new Intent("android.settings.SETTINGS");
            intent.setFlags(1073741824);
            this.a.startActivity(intent);
            System.exit(0);
        }
    }
}
