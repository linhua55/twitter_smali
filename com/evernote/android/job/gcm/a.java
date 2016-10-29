package com.evernote.android.job.gcm;

import android.content.Context;
import android.support.annotation.NonNull;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.JobRequest$NetworkType;
import com.evernote.android.job.j;
import com.evernote.android.job.k;
import com.evernote.android.job.util.d;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.gcm.f;
import com.google.android.gms.gcm.i;
import cxm;

/* compiled from: Twttr */
public class a implements j {
    private static final cxm a;
    private final com.google.android.gms.gcm.a b;

    static {
        a = new d("JobProxyGcm");
    }

    public a(Context context) {
        this.b = com.google.android.gms.gcm.a.a(context);
    }

    public void a(JobRequest jobRequest) {
        this.b.a(new f().a(d(jobRequest)).a(PlatformGcmService.class).c(true).a(k.a(jobRequest) / 1000, k.b(jobRequest) / 1000).a(a(jobRequest.l())).b(jobRequest.n()).a(jobRequest.j()).b());
        a.a("Scheduled OneoffTask, %s, start %s, end %s", new Object[]{jobRequest, com.evernote.android.job.util.f.a(k.a(jobRequest)), com.evernote.android.job.util.f.a(k.b(jobRequest))});
    }

    public void b(JobRequest jobRequest) {
        this.b.a(new i().a(d(jobRequest)).a(PlatformGcmService.class).c(true).a(jobRequest.h() / 1000).a(a(jobRequest.l())).b(jobRequest.n()).a(jobRequest.j()).b());
        a.a("Scheduled PeriodicTask, %s, interval %s", new Object[]{jobRequest, com.evernote.android.job.util.f.a(jobRequest.h())});
    }

    public void a(int i) {
        this.b.a(b(i), PlatformGcmService.class);
    }

    public boolean c(JobRequest jobRequest) {
        return true;
    }

    protected String d(JobRequest jobRequest) {
        return b(jobRequest.a());
    }

    protected String b(int i) {
        return String.valueOf(i);
    }

    protected int a(@NonNull JobRequest$NetworkType jobRequest$NetworkType) {
        switch (b.a[jobRequest$NetworkType.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return 2;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return 0;
            case Util.TYPE_OTHER /*3*/:
                return 1;
            default:
                throw new IllegalStateException("not implemented");
        }
    }
}
