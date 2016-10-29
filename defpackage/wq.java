package defpackage;

import android.content.Context;
import bmx;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.client.az;
import com.twitter.library.media.manager.k;
import com.twitter.media.model.MediaType;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.drafts.d;
import com.twitter.util.ao;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.object.e;
import com.twitter.util.z;

/* compiled from: Twttr */
/* renamed from: wq */
public class wq extends wb {
    String a;

    public boolean a(c cVar) {
        if (this.a == null) {
            return false;
        }
        az.a(cVar.e()).a(this.a, true);
        return true;
    }

    public j<Boolean> a(c cVar, z<bmx> zVar) {
        d dVar = (d) e.a(cVar.g());
        if (!wq.d(cVar)) {
            return ObservablePromise.a(Boolean.valueOf(false));
        }
        j<Boolean> observablePromise = new ObservablePromise();
        Context e = cVar.e();
        DraftAttachment draftAttachment = (DraftAttachment) e.a(dVar.d.get(0));
        this.a = az.a(e).a(new k(e, draftAttachment.f.toString(), MediaType.c), new wr(this, observablePromise, cVar, draftAttachment, dVar), ExecutionClass.b);
        return observablePromise;
    }

    public static boolean b(c cVar) {
        return true;
    }

    public static boolean c(c cVar) {
        return !wq.d(cVar);
    }

    private static boolean d(c cVar) {
        for (DraftAttachment draftAttachment : ((d) e.a(cVar.g())).d) {
            if (ao.e(draftAttachment.f) && !cVar.p() && draftAttachment.a(2) == null) {
                return true;
            }
        }
        return false;
    }
}
