package org.spongycastle.crypto.tls;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.spongycastle.asn1.ocsp.OCSPResponse;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class CertificateStatus {
    protected short a;
    protected Object b;

    public CertificateStatus(short s, Object obj) {
        if (a(s, obj)) {
            this.a = s;
            this.b = obj;
            return;
        }
        throw new IllegalArgumentException("'response' is not an instance of the correct type");
    }

    public void a(OutputStream outputStream) throws IOException {
        TlsUtils.a(this.a, outputStream);
        switch (this.a) {
            case p.View_android_focusable /*1*/:
                TlsUtils.c(((OCSPResponse) this.b).a("DER"), outputStream);
            default:
                throw new TlsFatalAlert((short) 80);
        }
    }

    public static CertificateStatus a(InputStream inputStream) throws IOException {
        short a = TlsUtils.a(inputStream);
        switch (a) {
            case p.View_android_focusable /*1*/:
                return new CertificateStatus(a, OCSPResponse.a(TlsUtils.c(TlsUtils.g(inputStream))));
            default:
                throw new TlsFatalAlert((short) 50);
        }
    }

    protected static boolean a(short s, Object obj) {
        switch (s) {
            case p.View_android_focusable /*1*/:
                return obj instanceof OCSPResponse;
            default:
                throw new IllegalArgumentException("'statusType' is an unsupported value");
        }
    }
}
