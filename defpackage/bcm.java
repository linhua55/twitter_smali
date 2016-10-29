package defpackage;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import javax.net.ssl.SSLSocketFactory;

/* compiled from: Twttr */
/* renamed from: bcm */
public class bcm extends SSLSocketFactory {
    private final bcn a;

    public bcm(bcp bcp, String[] strArr, long j, String[] strArr2) throws UnrecoverableKeyException, KeyManagementException, NoSuchAlgorithmException, KeyStoreException {
        this.a = new bcn(bcp, strArr, j, strArr2);
    }

    public String[] getDefaultCipherSuites() {
        return this.a.a();
    }

    public String[] getSupportedCipherSuites() {
        return this.a.b();
    }

    public Socket createSocket(Socket socket, String str, int i, boolean z) throws IOException {
        return this.a.a(socket, str, i, z);
    }

    public Socket createSocket(String str, int i) throws IOException {
        return this.a.a(str, i);
    }

    public Socket createSocket(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        return this.a.a(str, i, inetAddress, i2);
    }

    public Socket createSocket(InetAddress inetAddress, int i) throws IOException {
        return this.a.a(inetAddress, i);
    }

    public Socket createSocket(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        return this.a.a(inetAddress, i, inetAddress2, i2);
    }
}
