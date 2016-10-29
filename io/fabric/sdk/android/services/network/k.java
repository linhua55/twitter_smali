package io.fabric.sdk.android.services.network;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

/* compiled from: Twttr */
public final class k {
    public static final SSLSocketFactory a(l lVar) throws KeyManagementException, NoSuchAlgorithmException {
        SSLContext instance = SSLContext.getInstance("TLS");
        m mVar = new m(new n(lVar.a(), lVar.b()), lVar);
        instance.init(null, new TrustManager[]{mVar}, null);
        return instance.getSocketFactory();
    }
}
