package com.evernote.android.job.v14;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.evernote.android.job.util.d;
import com.evernote.android.job.util.f;
import defpackage.cxm;

/* compiled from: Twttr */
public class PlatformAlarmReceiver extends WakefulBroadcastReceiver {
    private static final cxm a;

    static {
        a = new d("PlatformAlarmReceiver");
    }

    static Intent a(int i) {
        return new Intent("com.evernote.android.job.v14.RUN_JOB").putExtra("EXTRA_JOB_ID", i);
    }

    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        if ("com.evernote.android.job.v14.RUN_JOB".equals(intent.getAction()) || "net.vrallev.android.job.v14.RUN_JOB".equals(intent.getAction())) {
            Intent a = PlatformAlarmService.a(context, intent.getIntExtra("EXTRA_JOB_ID", -1));
            if (f.b(context)) {
                try {
                    WakefulBroadcastReceiver.startWakefulService(context, a);
                    return;
                } catch (Throwable e) {
                    a.b(e);
                    return;
                }
            }
            context.startService(a);
        }
    }
}
