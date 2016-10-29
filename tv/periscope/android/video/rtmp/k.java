package tv.periscope.android.video.rtmp;

import java.util.concurrent.Semaphore;
import javax.net.ssl.HandshakeCompletedEvent;
import javax.net.ssl.HandshakeCompletedListener;

/* compiled from: Twttr */
class k implements HandshakeCompletedListener {
    final /* synthetic */ Semaphore a;
    final /* synthetic */ j b;

    k(j jVar, Semaphore semaphore) {
        this.b = jVar;
        this.a = semaphore;
    }

    public void handshakeCompleted(HandshakeCompletedEvent handshakeCompletedEvent) {
        this.a.release();
    }
}
