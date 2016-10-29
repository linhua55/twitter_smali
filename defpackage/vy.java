package defpackage;

import android.content.Context;
import android.support.annotation.VisibleForTesting;
import ar;
import bvj;
import com.evernote.android.job.Job;
import com.evernote.android.job.Job.Result;
import com.evernote.android.job.JobRequest;
import com.evernote.android.job.b;
import com.evernote.android.job.h;
import com.evernote.android.job.m;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.util.collection.CollectionUtils;

/* compiled from: Twttr */
/* renamed from: vy */
public class vy extends Job {
    public static void b(Context context) {
        vz vzVar = new vz(context);
        bvj.a(vzVar);
        bg.a().a(vzVar);
    }

    private static void b(Context context, long j) {
        long b = vx.b();
        String a = vy.a(j);
        Iterable a2 = h.a().a(a);
        if (a2.isEmpty()) {
            ar arVar = new ar();
            arVar.a("user_id", j);
            new m(a).a(b).c(true).a(arVar).a().t();
            vy.c(context, j);
            return;
        }
        JobRequest jobRequest = (JobRequest) CollectionUtils.b(a2);
        if (jobRequest.h() != b) {
            jobRequest.u().a(b).a().t();
        }
    }

    private static void c(long j) {
        h.a().c(vy.a(j));
    }

    private static void c(Context context, long j) {
        vx a = vx.a(context, j);
        az.a(context).a(new wa(context, bg.a().b(j), a), 0, null);
    }

    @VisibleForTesting
    static String a(long j) {
        return "TpmIdSyncJob_" + j;
    }

    protected Result a(b bVar) {
        long b = bVar.d().b("user_id", -1);
        if (b <= 0) {
            return Result.b;
        }
        vy.c(f(), b);
        return Result.a;
    }
}
