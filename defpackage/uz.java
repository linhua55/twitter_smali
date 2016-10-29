package defpackage;

import asy;
import atf;
import com.twitter.library.av.playback.AVDataSource;
import java.io.Closeable;
import java.io.IOException;
import rx.o;

/* compiled from: Twttr */
/* renamed from: uz */
public class uz implements Closeable {
    private final atf<AVDataSource, vd> a;

    public uz(atf<AVDataSource, vd> atf_com_twitter_library_av_playback_AVDataSource__vd) {
        this.a = new asy(atf_com_twitter_library_av_playback_AVDataSource__vd);
    }

    public o<vd> a(AVDataSource aVDataSource) {
        return this.a.a_(aVDataSource);
    }

    public void close() throws IOException {
        this.a.close();
    }
}
