package com.evernote.android.job.v14;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.h;
import com.evernote.android.job.k;
import defpackage.cxk;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* compiled from: Twttr */
public class PlatformAlarmService extends IntentService {
    private static final ExecutorService a;

    static {
        a = Executors.newCachedThreadPool();
    }

    static Intent a(Context context, int i) {
        Intent intent = new Intent(context, PlatformAlarmService.class);
        intent.putExtra("EXTRA_JOB_ID", i);
        return intent;
    }

    public PlatformAlarmService() {
        super(PlatformAlarmService.class.getSimpleName());
    }

    protected void onHandleIntent(Intent intent) {
        if (intent == null) {
            cxk.a("Delivered intent is null");
            return;
        }
        k kVar = new k(this, intent.getIntExtra("EXTRA_JOB_ID", -1));
        JobRequest a = kVar.a(h.a((Context) this));
        if (a == null) {
            kVar.b();
        } else {
            a.execute(new b(this, kVar, a, intent));
        }
    }
}
