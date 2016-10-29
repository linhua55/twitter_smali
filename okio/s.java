package okio;

import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
final class s implements ab {
    final /* synthetic */ ac a;
    final /* synthetic */ InputStream b;

    s(ac acVar, InputStream inputStream) {
        this.a = acVar;
        this.b = inputStream;
    }

    public long read(f fVar, long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (j == 0) {
            return 0;
        } else {
            this.a.throwIfReached();
            y e = fVar.e(1);
            int read = this.b.read(e.a, e.c, (int) Math.min(j, (long) (2048 - e.c)));
            if (read == -1) {
                return -1;
            }
            e.c += read;
            fVar.b += (long) read;
            return (long) read;
        }
    }

    public void close() throws IOException {
        this.b.close();
    }

    public ac timeout() {
        return this.a;
    }

    public String toString() {
        return "source(" + this.b + ")";
    }
}
