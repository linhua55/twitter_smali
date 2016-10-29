package okio;

import java.io.IOException;
import java.io.OutputStream;

/* compiled from: Twttr */
final class r implements aa {
    final /* synthetic */ ac a;
    final /* synthetic */ OutputStream b;

    r(ac acVar, OutputStream outputStream) {
        this.a = acVar;
        this.b = outputStream;
    }

    public void write(f fVar, long j) throws IOException {
        ae.a(fVar.b, 0, j);
        while (j > 0) {
            this.a.throwIfReached();
            y yVar = fVar.a;
            int min = (int) Math.min(j, (long) (yVar.c - yVar.b));
            this.b.write(yVar.a, yVar.b, min);
            yVar.b += min;
            j -= (long) min;
            fVar.b -= (long) min;
            if (yVar.b == yVar.c) {
                fVar.a = yVar.a();
                z.a(yVar);
            }
        }
    }

    public void flush() throws IOException {
        this.b.flush();
    }

    public void close() throws IOException {
        this.b.close();
    }

    public ac timeout() {
        return this.a;
    }

    public String toString() {
        return "sink(" + this.b + ")";
    }
}
