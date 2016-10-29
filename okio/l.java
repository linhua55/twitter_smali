package okio;

import java.io.IOException;

/* compiled from: Twttr */
public abstract class l implements aa {
    private final aa delegate;

    public l(aa aaVar) {
        if (aaVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.delegate = aaVar;
    }

    public final aa delegate() {
        return this.delegate;
    }

    public void write(f fVar, long j) throws IOException {
        this.delegate.write(fVar, j);
    }

    public void flush() throws IOException {
        this.delegate.flush();
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
