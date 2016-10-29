package okio;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* compiled from: Twttr */
public interface aa extends Closeable, Flushable {
    void close() throws IOException;

    void flush() throws IOException;

    ac timeout();

    void write(f fVar, long j) throws IOException;
}
