package io.fabric.sdk.android.services.network;

import io.fabric.sdk.android.services.network.HttpRequest.HttpRequestException;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: Twttr */
class d extends e<HttpRequest> {
    final /* synthetic */ InputStream a;
    final /* synthetic */ OutputStream b;
    final /* synthetic */ HttpRequest c;

    d(HttpRequest httpRequest, Closeable closeable, boolean z, InputStream inputStream, OutputStream outputStream) {
        this.c = httpRequest;
        this.a = inputStream;
        this.b = outputStream;
        super(closeable, z);
    }

    public /* synthetic */ Object b() throws HttpRequestException, IOException {
        return a();
    }

    public HttpRequest a() throws IOException {
        byte[] bArr = new byte[this.c.j];
        while (true) {
            int read = this.a.read(bArr);
            if (read == -1) {
                return this.c;
            }
            this.b.write(bArr, 0, read);
        }
    }
}
