package defpackage;

import android.content.Context;
import bmx;
import com.twitter.android.client.tweetuploadmanager.TweetUploadException;
import com.twitter.android.client.tweetuploadmanager.TweetUploadStateException;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.internal.android.service.ab;
import com.twitter.library.client.Session;
import com.twitter.library.network.an;
import com.twitter.library.service.aa;
import com.twitter.media.model.MediaFile;
import com.twitter.model.core.cm;
import com.twitter.model.drafts.d;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.object.e;
import com.twitter.util.z;
import java.util.LinkedHashMap;

/* compiled from: Twttr */
/* renamed from: wt */
class wt extends vw {
    private final c a;
    private final ObservablePromise<aa> b;

    wt(Context context, Session session, d dVar, LinkedHashMap<Long, MediaFile> linkedHashMap, c cVar, z<bmx> zVar, ObservablePromise<aa> observablePromise) {
        super(context, session, dVar, linkedHashMap, cVar.d(), zVar);
        this.a = cVar;
        this.b = observablePromise;
    }

    public void a(ab<aa> abVar) {
        super.a(abVar);
        com.twitter.android.client.tweetuploadmanager.d h = this.a.h();
        aa aaVar = (aa) e.a(abVar.b());
        h.a(aaVar);
        h.a(wb.a(aaVar));
        h.a(an.a(this.o));
        boolean z = aaVar.c.getBoolean("IsRetriedDuplicateTweet", false);
        cm a = a();
        if (a != null) {
            this.a.a(a);
            this.b.set(aaVar);
        } else if (z) {
            this.a.a(true);
            this.b.set(aaVar);
        } else {
            Throwable tweetUploadStateException;
            if (aaVar.c.getBoolean("MediaExpired", false)) {
                tweetUploadStateException = new TweetUploadStateException(this.a, "Tweet media expired");
            } else {
                tweetUploadStateException = new TweetUploadException(this.a, "Tweet posting failed: " + aaVar.e());
            }
            this.b.setException(tweetUploadStateException);
        }
    }
}
