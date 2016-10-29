package okio;

import java.io.Closeable;
import java.io.IOException;

/* compiled from: Twttr */
public interface ab extends Closeable {
    void close() throws IOException;

    long read(f fVar, long j) throws IOException;

    ac timeout();
}
