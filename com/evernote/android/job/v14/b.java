package com.evernote.android.job.v14;

import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.k;

/* compiled from: Twttr */
class b implements Runnable {
    final /* synthetic */ k a;
    final /* synthetic */ JobRequest b;
    final /* synthetic */ Intent c;
    final /* synthetic */ PlatformAlarmService d;

    b(PlatformAlarmService platformAlarmService, k kVar, JobRequest jobRequest, Intent intent) {
        this.d = platformAlarmService;
        this.a = kVar;
        this.b = jobRequest;
        this.c = intent;
    }

    public void run() {
        this.a.d(this.b);
        try {
            WakefulBroadcastReceiver.completeWakefulIntent(this.c);
        } catch (Exception e) {
        }
    }
}
