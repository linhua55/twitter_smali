package defpackage;

import bmx;
import cfb;
import com.twitter.android.client.tweetuploadmanager.a;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.internal.android.service.AsyncOperation.ExecutionClass;
import com.twitter.library.api.upload.aa;
import com.twitter.library.client.az;
import com.twitter.model.drafts.d;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.z;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: wi */
public class wi extends wb {
    private a a;

    public synchronized boolean a(c cVar) {
        boolean z = true;
        synchronized (this) {
            if (this.a == null || this.a.isDone()) {
                z = false;
            } else {
                this.a.cancel(true);
            }
        }
        return z;
    }

    public synchronized j<Boolean> a(c cVar, z<bmx> zVar) {
        j<Boolean> a;
        List o = cVar.o();
        if (o.isEmpty()) {
            a = ObservablePromise.a(Boolean.valueOf(true));
        } else {
            a = new ObservablePromise();
            this.a = new a(cVar.e(), o, zVar);
            this.a.a(new wj(this, a, cVar), ExecutionClass.c);
            az.a(cVar.e()).a(this.a);
        }
        return a;
    }

    public static boolean b(c cVar) {
        return cVar.g() != null;
    }

    public static boolean c(c cVar) {
        d g = cVar.g();
        if (g == null) {
            cfb.b("MediaPreparationSubtask", "validatePostConditions failed because draft tweet is null");
            return false;
        }
        int size = g.d.size();
        if (size == 0) {
            return true;
        }
        List<aa> o = cVar.o();
        if (size != o.size()) {
            cfb.b("MediaPreparationSubtask", "validatePostConditions failed because mediaFiles list is not the expected size");
            return false;
        }
        for (aa d : o) {
            if (d.d()) {
                cfb.b("MediaPreparationSubtask", "validatePostConditions failed because missing one or more preparedMedia");
                return false;
            }
        }
        return true;
    }
}
