package defpackage;

import bmx;
import com.twitter.android.client.tweetuploadmanager.TweetUploadException;
import com.twitter.android.client.tweetuploadmanager.a;
import com.twitter.internal.android.service.AsyncOperation;
import com.twitter.internal.android.service.c;
import com.twitter.util.concurrent.ObservablePromise;

/* compiled from: Twttr */
/* renamed from: wj */
class wj implements c<bmx, AsyncOperation<bmx, Boolean>> {
    final /* synthetic */ ObservablePromise a;
    final /* synthetic */ com.twitter.android.client.tweetuploadmanager.c b;
    final /* synthetic */ wi c;

    wj(wi wiVar, ObservablePromise observablePromise, com.twitter.android.client.tweetuploadmanager.c cVar) {
        this.c = wiVar;
        this.a = observablePromise;
        this.b = cVar;
    }

    public void b(AsyncOperation<bmx, Boolean> asyncOperation) {
    }

    public void a(bmx bmx, AsyncOperation<bmx, Boolean> asyncOperation) {
    }

    public void a(AsyncOperation<bmx, Boolean> asyncOperation) {
        if (asyncOperation.isCancelled()) {
            this.a.e();
        } else if (((Boolean) asyncOperation.l().b()) != Boolean.TRUE) {
            Throwable a = ((a) asyncOperation).a();
            if (a == null) {
                a = new TweetUploadException(this.b, "Unable to prepare media");
            }
            this.a.setException(a);
        } else {
            this.a.set(Boolean.valueOf(true));
        }
    }
}
