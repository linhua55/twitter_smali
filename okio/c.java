package okio;

import java.io.IOException;

/* compiled from: Twttr */
class c implements ab {
    final /* synthetic */ ab a;
    final /* synthetic */ a b;

    c(a aVar, ab abVar) {
        this.b = aVar;
        this.a = abVar;
    }

    public long read(f fVar, long j) throws IOException {
        this.b.enter();
        try {
            long read = this.a.read(fVar, j);
            this.b.exit(true);
            return read;
        } catch (IOException e) {
            throw this.b.exit(e);
        } catch (Throwable th) {
            this.b.exit(false);
        }
    }

    public void close() throws IOException {
        try {
            this.a.close();
            this.b.exit(true);
        } catch (IOException e) {
            throw this.b.exit(e);
        } catch (Throwable th) {
            this.b.exit(false);
        }
    }

    public ac timeout() {
        return this.b;
    }

    public String toString() {
        return "AsyncTimeout.source(" + this.a + ")";
    }
}
