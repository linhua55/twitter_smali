package defpackage;

import com.twitter.android.client.tweetuploadmanager.TweetUploadException;
import com.twitter.android.client.tweetuploadmanager.c;
import com.twitter.util.concurrent.ObservablePromise;
import com.twitter.util.concurrent.e;

/* compiled from: Twttr */
/* renamed from: we */
class we implements e<Exception> {
    final /* synthetic */ ObservablePromise a;
    final /* synthetic */ c b;
    final /* synthetic */ wc c;

    we(wc wcVar, ObservablePromise observablePromise, c cVar) {
        this.c = wcVar;
        this.a = observablePromise;
        this.b = cVar;
    }

    public void a(Exception exception) {
        this.a.setException(new TweetUploadException(this.b, "Media metadata failed to upload"));
    }
}
