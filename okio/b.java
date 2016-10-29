package okio;

import java.io.IOException;

/* compiled from: Twttr */
class b implements aa {
    final /* synthetic */ aa a;
    final /* synthetic */ a b;

    b(a aVar, aa aaVar) {
        this.b = aVar;
        this.a = aaVar;
    }

    public void write(f fVar, long j) throws IOException {
        this.b.enter();
        try {
            this.a.write(fVar, j);
            this.b.exit(true);
        } catch (IOException e) {
            throw this.b.exit(e);
        } catch (Throwable th) {
            this.b.exit(false);
        }
    }

    public void flush() throws IOException {
        this.b.enter();
        try {
            this.a.flush();
            this.b.exit(true);
        } catch (IOException e) {
            throw this.b.exit(e);
        } catch (Throwable th) {
            this.b.exit(false);
        }
    }

    public void close() throws IOException {
        this.b.enter();
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
        return "AsyncTimeout.sink(" + this.a + ")";
    }
}
