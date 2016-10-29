package defpackage;

import com.twitter.platform.PlatformContext;
import com.twitter.util.network.c;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.UnrecoverableKeyException;
import java.util.HashSet;
import java.util.Set;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;

/* compiled from: Twttr */
/* renamed from: bcn */
class bcn {
    private static final X509HostnameVerifier a;
    private final Set<String> b;
    private final SSLSocketFactory c;
    private final SSLSocketFactory d;
    private final c e;

    static {
        a = org.apache.http.conn.ssl.SSLSocketFactory.STRICT_HOSTNAME_VERIFIER;
    }

    bcn(bcp bcp, String[] strArr, long j, String[] strArr2) throws UnrecoverableKeyException, KeyManagementException, NoSuchAlgorithmException, KeyStoreException {
        this.b = new HashSet();
        TrustManager[] a = a(bcp, strArr, j);
        TrustManager[] a2 = a(bcp);
        this.e = PlatformContext.f().d();
        String b = this.e.b();
        SSLContext instance = SSLContext.getInstance(b);
        SSLContext instance2 = SSLContext.getInstance(b);
        instance.init(null, a, null);
        instance2.init(null, a2, null);
        this.c = instance.getSocketFactory();
        this.d = instance2.getSocketFactory();
        for (Object add : strArr2) {
            this.b.add(add);
        }
    }

    public String[] a() {
        return this.d.getDefaultCipherSuites();
    }

    public String[] b() {
        return this.d.getSupportedCipherSuites();
    }

    public Socket a(Socket socket, String str, int i, boolean z) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) a(str).createSocket(socket, str, a(i), z);
        a(sSLSocket);
        a(str, sSLSocket);
        return sSLSocket;
    }

    public Socket a(String str, int i) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) a(str).createSocket(str, a(i));
        a(sSLSocket);
        a(str, sSLSocket);
        return sSLSocket;
    }

    public Socket a(String str, int i, InetAddress inetAddress, int i2) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) a(str).createSocket(str, a(i), inetAddress, i2);
        a(sSLSocket);
        a(str, sSLSocket);
        return sSLSocket;
    }

    public Socket a(InetAddress inetAddress, int i) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) a(inetAddress.getHostName()).createSocket(inetAddress, a(i));
        a(sSLSocket);
        a(inetAddress.getHostName(), sSLSocket);
        return sSLSocket;
    }

    public Socket a(InetAddress inetAddress, int i, InetAddress inetAddress2, int i2) throws IOException {
        SSLSocket sSLSocket = (SSLSocket) a(inetAddress.getHostName()).createSocket(inetAddress, a(i), inetAddress2, i2);
        a(sSLSocket);
        a(inetAddress.getHostName(), sSLSocket);
        return sSLSocket;
    }

    private void a(SSLSocket sSLSocket) {
        this.e.a(sSLSocket);
    }

    private TrustManager[] a(bcp bcp) throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory instance = TrustManagerFactory.getInstance("X509");
        instance.init(bcp.a);
        return instance.getTrustManagers();
    }

    private TrustManager[] a(bcp bcp, String[] strArr, long j) {
        return new TrustManager[]{new bco(bcp, strArr, j)};
    }

    private int a(int i) {
        if (i == -1) {
            return 443;
        }
        return i;
    }

    private SSLSocketFactory a(String str) {
        if (this.b.contains(str)) {
            return this.c;
        }
        return this.d;
    }

    private void a(String str, SSLSocket sSLSocket) throws IOException {
        try {
            a.verify(str, sSLSocket);
        } catch (Throwable th) {
            try {
                sSLSocket.close();
            } catch (Exception e) {
            }
        }
    }
}
