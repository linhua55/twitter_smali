package tv.periscope.android.exoplayer.player;

import com.google.android.exoplayer.MediaFormat;
import com.google.android.exoplayer.MediaFormatHolder;
import com.google.android.exoplayer.SampleHolder;
import com.google.android.exoplayer.SampleSource;
import com.google.android.exoplayer.SampleSource.SampleSourceReader;
import java.io.IOException;
import java.util.ArrayList;
import tv.periscope.android.video.rtmp.Connection;
import tv.periscope.android.video.rtmp.n;

/* compiled from: Twttr */
public class q implements SampleSource, SampleSourceReader {
    protected final String a;
    protected final String b;
    protected final int c;
    protected int d;
    protected Connection e;
    private MediaFormat f;
    private long g;
    private final ArrayList<n> h;

    public q(int i, String str, int i2, String str2) {
        this.g = 0;
        this.h = new ArrayList();
        this.c = i;
        this.a = str;
        this.d = i2;
        this.b = str2;
        this.f = MediaFormat.createFormatForMimeType(String.valueOf(this.c), this.a, this.d, -1);
    }

    public void a(Connection connection) {
        this.e = connection;
    }

    public void a(n nVar) {
        synchronized (this.h) {
            this.h.add(nVar);
            if (nVar.d() > this.g) {
                this.g = nVar.d();
            }
        }
    }

    public void maybeThrowError() throws IOException {
    }

    public boolean prepare(long j) {
        return true;
    }

    public int getTrackCount() {
        return 1;
    }

    public MediaFormat getFormat(int i) {
        return this.f;
    }

    public void enable(int i, long j) {
    }

    public void disable(int i) {
    }

    public boolean continueBuffering(int i, long j) {
        return this.h.size() > 0;
    }

    public long readDiscontinuity(int i) {
        return 0;
    }

    public int readData(int i, long j, MediaFormatHolder mediaFormatHolder, SampleHolder sampleHolder) {
        return 0;
    }

    public void seekToUs(long j) {
    }

    public long getBufferedPositionUs() {
        long j;
        synchronized (this.h) {
            j = this.g * 1000;
        }
        return j;
    }

    public void release() {
        this.e.g();
    }

    protected n a() {
        n nVar;
        synchronized (this.h) {
            if (this.h.size() > 0) {
                nVar = (n) this.h.remove(0);
            } else {
                nVar = null;
            }
        }
        return nVar;
    }

    public SampleSourceReader register() {
        return this;
    }
}
