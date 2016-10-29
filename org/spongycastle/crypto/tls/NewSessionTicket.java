package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public class NewSessionTicket {
    protected long a;
    protected byte[] b;

    public NewSessionTicket(long j, byte[] bArr) {
        this.a = j;
        this.b = bArr;
    }

    public void a(OutputStream outputStream) throws IOException {
        TlsUtils.a(this.a, outputStream);
        TlsUtils.b(this.b, outputStream);
    }

    public static NewSessionTicket a(InputStream inputStream) throws IOException {
        return new NewSessionTicket(TlsUtils.d(inputStream), TlsUtils.f(inputStream));
    }
}
