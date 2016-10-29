package defpackage;

import android.os.AsyncTask;
import bmx;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.library.api.upload.MediaUsage;
import com.twitter.library.api.upload.aa;
import com.twitter.library.api.upload.h;
import com.twitter.library.api.upload.i;
import com.twitter.library.api.upload.l;
import com.twitter.library.service.ab;
import com.twitter.model.drafts.DraftAttachment;
import com.twitter.model.media.EditableMedia;
import com.twitter.model.media.EditableSegmentedVideo;
import com.twitter.util.al;
import com.twitter.util.ao;
import com.twitter.util.collection.z;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.j;
import com.twitter.util.object.e;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: wk */
public class wk extends wb {
    private static final z<String, String> c;
    private static final z<String, String> d;
    final ObservablePromise<Boolean> a;
    l b;
    private final Object e;
    private c f;
    private com.twitter.util.z<bmx> g;
    private int h;

    public wk() {
        this.a = new ObservablePromise();
        this.e = new Object();
    }

    static {
        c = z.a("X-Media-Type", "video/mp4");
        d = z.a("X-Media-Cropping", "center");
    }

    public boolean a(c cVar) {
        synchronized (this.e) {
            this.a.cancel(true);
            if (this.b != null) {
                this.b.cancel(true);
            }
        }
        return true;
    }

    public j<Boolean> a(c cVar, com.twitter.util.z<bmx> zVar) {
        this.f = cVar;
        this.g = zVar;
        this.h = 0;
        d(cVar);
        return this.a;
    }

    private void d(c cVar) {
        List o = this.f.o();
        if (o.size() <= this.h || this.a.isCancelled()) {
            this.a.set(Boolean.valueOf(true));
            return;
        }
        int i = this.h;
        this.h = i + 1;
        aa aaVar = (aa) e.a(o.get(i));
        i iVar = new i(this.f.e(), new ab(this.f.l()));
        synchronized (this.e) {
            if (this.b == null || !this.b.isCancelled()) {
                l a;
                DraftAttachment b = aaVar.b();
                if (cVar.p() && ao.e(b.f)) {
                    a = iVar.a(b.f, b.g, MediaUsage.a, this.g);
                } else {
                    a = iVar.a(aaVar.e(), wk.a(b.a(2)), this.g, MediaUsage.a);
                }
                this.b = a;
                this.b.d(new wl(this));
                this.b.c(new wm(this, cVar, aaVar));
                this.b.b(new wn(this, cVar, aaVar));
                return;
            }
        }
    }

    void a(c cVar, aa aaVar, h hVar) {
        if (hVar.b()) {
            aaVar.a(hVar.a, al.b());
            d(cVar);
            return;
        }
        new com.twitter.util.concurrent.c().a(AsyncTask.THREAD_POOL_EXECUTOR).a(new wo(this, hVar)).a();
    }

    public static boolean b(c cVar) {
        if (cVar.g() == null) {
            return false;
        }
        for (aa d : cVar.o()) {
            if (d.d()) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(c cVar) {
        if (cVar.g() == null) {
            return false;
        }
        long b = al.b();
        for (aa a : cVar.o()) {
            if (!a.a(b)) {
                return false;
            }
        }
        return true;
    }

    private static List<z<String, String>> a(EditableMedia editableMedia) {
        switch (wp.a[editableMedia.g().ordinal()]) {
            case p.View_android_focusable /*1*/:
                return Collections.singletonList(c);
            case p.View_paddingStart /*2*/:
                if (!((EditableSegmentedVideo) editableMedia).c()) {
                    return Collections.singletonList(c);
                }
                List<z<String, String>> arrayList = new ArrayList(2);
                arrayList.add(c);
                arrayList.add(d);
                return arrayList;
            default:
                return Collections.emptyList();
        }
    }
}
