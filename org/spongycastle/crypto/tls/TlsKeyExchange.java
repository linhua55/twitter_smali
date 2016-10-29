package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
public interface TlsKeyExchange {
    void a(InputStream inputStream) throws IOException;

    void a(OutputStream outputStream) throws IOException;

    void a(Certificate certificate) throws IOException;

    void a(CertificateRequest certificateRequest) throws IOException;

    void a(TlsContext tlsContext);

    void a(TlsCredentials tlsCredentials) throws IOException;

    void b(InputStream inputStream) throws IOException;

    void b(Certificate certificate) throws IOException;

    void b(TlsCredentials tlsCredentials) throws IOException;

    byte[] b() throws IOException;

    void c() throws IOException;

    void d() throws IOException;

    void e() throws IOException;

    byte[] f() throws IOException;
}
