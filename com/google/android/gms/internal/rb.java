package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.DownloadManager.Request;

@TargetApi(9)
public class rb extends qz {
    public rb() {
        super(null);
    }

    public int a() {
        return 6;
    }

    public boolean a(Request request) {
        request.setShowRunningNotification(true);
        return true;
    }

    public int b() {
        return 7;
    }
}
