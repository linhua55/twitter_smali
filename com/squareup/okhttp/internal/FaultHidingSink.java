package com.squareup.okhttp.internal;

import java.io.IOException;
import okio.aa;
import okio.f;
import okio.l;

/* compiled from: Twttr */
class FaultHidingSink extends l {
    private boolean hasErrors;

    public FaultHidingSink(aa aaVar) {
        super(aaVar);
    }

    public void write(f fVar, long j) throws IOException {
        if (this.hasErrors) {
            fVar.g(j);
            return;
        }
        try {
            super.write(fVar, j);
        } catch (IOException e) {
            this.hasErrors = true;
            onException(e);
        }
    }

    public void flush() throws IOException {
        if (!this.hasErrors) {
            try {
                super.flush();
            } catch (IOException e) {
                this.hasErrors = true;
                onException(e);
            }
        }
    }

    public void close() throws IOException {
        if (!this.hasErrors) {
            try {
                super.close();
            } catch (IOException e) {
                this.hasErrors = true;
                onException(e);
            }
        }
    }

    protected void onException(IOException iOException) {
    }
}
