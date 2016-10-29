package okio;

import java.io.IOException;

/* compiled from: Twttr */
public abstract class m implements ab {
    private final ab delegate;

    public m(ab abVar) {
        if (abVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.delegate = abVar;
    }

    public final ab delegate() {
        return this.delegate;
    }

    public long read(f fVar, long j) throws IOException {
        return this.delegate.read(fVar, j);
    }

    public ac timeout() {
        return this.delegate.timeout();
    }

    public void close() throws IOException {
        this.delegate.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.delegate.toString() + ")";
    }
}
