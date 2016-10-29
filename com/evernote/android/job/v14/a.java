package com.evernote.android.job.v14;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.j;
import com.evernote.android.job.k;
import com.evernote.android.job.util.d;
import com.evernote.android.job.util.f;
import com.google.android.exoplayer.C;
import cxm;

/* compiled from: Twttr */
public class a implements j {
    private static final cxm a;
    private final Context b;
    private AlarmManager c;

    static {
        a = new d("JobProxy14");
    }

    public a(Context context) {
        this.b = context;
    }

    public void a(JobRequest jobRequest) {
        a(jobRequest, System.currentTimeMillis() + k.c(jobRequest), a(jobRequest, false));
        a.a("Scheduled alarm, %s, delay %s, exact %b", new Object[]{jobRequest, f.a(k.c(jobRequest)), Boolean.valueOf(jobRequest.p())});
    }

    public void b(JobRequest jobRequest) {
        PendingIntent a = a(jobRequest, true);
        AlarmManager a2 = a();
        if (a2 != null) {
            a2.setRepeating(0, System.currentTimeMillis() + jobRequest.h(), jobRequest.h(), a);
        }
        a.a("Scheduled repeating alarm, %s, interval %s", new Object[]{jobRequest, f.a(jobRequest.h())});
    }

    public void a(int i) {
        AlarmManager a = a();
        if (a != null) {
            try {
                a.cancel(a(i, a(true)));
                a.cancel(a(i, a(false)));
            } catch (Throwable e) {
                a.b(e);
            }
        }
    }

    public boolean c(JobRequest jobRequest) {
        return a(jobRequest, 536870912) != null;
    }

    protected int a(boolean z) {
        if (z) {
            return C.SAMPLE_FLAG_DECODE_ONLY;
        }
        return 1207959552;
    }

    protected PendingIntent a(JobRequest jobRequest, boolean z) {
        return a(jobRequest, a(z));
    }

    protected PendingIntent a(JobRequest jobRequest, int i) {
        return a(jobRequest.a(), i);
    }

    protected PendingIntent a(int i, int i2) {
        try {
            return PendingIntent.getBroadcast(this.b, i, PlatformAlarmReceiver.a(i), i2);
        } catch (Throwable e) {
            a.b(e);
            return null;
        }
    }

    protected void a(JobRequest jobRequest, long j, PendingIntent pendingIntent) {
        AlarmManager a = a();
        if (a != null) {
            try {
                if (!jobRequest.p()) {
                    a.set(1, j, pendingIntent);
                } else if (VERSION.SDK_INT >= 23) {
                    a.setExactAndAllowWhileIdle(0, j, pendingIntent);
                } else if (VERSION.SDK_INT >= 19) {
                    a.setExact(0, j, pendingIntent);
                } else {
                    a.set(0, j, pendingIntent);
                }
            } catch (Throwable e) {
                a.b(e);
            }
        }
    }

    @Nullable
    protected AlarmManager a() {
        if (this.c == null) {
            this.c = (AlarmManager) this.b.getSystemService("alarm");
        }
        if (this.c == null) {
            a.c("AlarmManager is null");
        }
        return this.c;
    }
}
