package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;

/* compiled from: Twttr */
/* renamed from: cvm */
public class cvm extends GZIPInputStream {
    private final InputStream a;

    public cvm(InputStream inputStream) throws IOException {
        super(inputStream);
        this.a = inputStream;
    }

    public int available() throws IOException {
        return this.a.available();
    }
}
