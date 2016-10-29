package com.squareup.okhttp.v_1_5_1.internal;

import com.squareup.okhttp.v_1_5_1.Protocol;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.Deflater;
import java.util.zip.DeflaterOutputStream;
import javax.net.ssl.SSLSocket;

/* compiled from: Twttr */
public class Platform {
    private static final Platform PLATFORM;
    private Constructor<DeflaterOutputStream> deflaterConstructor;

    /* compiled from: Twttr */
    class Android extends Platform {
        private final Method getAlpnSelectedProtocol;
        private final Method getNpnSelectedProtocol;
        protected final Class<?> openSslSocketClass;
        private final Method setAlpnProtocols;
        private final Method setHostname;
        private final Method setNpnProtocols;
        private final Method setUseSessionTickets;

        private Android(Class<?> cls, Method method, Method method2, Method method3, Method method4, Method method5, Method method6) {
            this.openSslSocketClass = cls;
            this.setUseSessionTickets = method;
            this.setHostname = method2;
            this.setNpnProtocols = method3;
            this.getNpnSelectedProtocol = method4;
            this.setAlpnProtocols = method5;
            this.getAlpnSelectedProtocol = method6;
        }

        public void connectSocket(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
            try {
                socket.connect(inetSocketAddress, i);
            } catch (Throwable e) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e);
                throw iOException;
            }
        }

        public void enableTlsExtensions(SSLSocket sSLSocket, String str) {
            super.enableTlsExtensions(sSLSocket, str);
            if (this.openSslSocketClass.isInstance(sSLSocket)) {
                try {
                    this.setUseSessionTickets.invoke(sSLSocket, new Object[]{Boolean.valueOf(true)});
                    this.setHostname.invoke(sSLSocket, new Object[]{str});
                } catch (Throwable e) {
                    throw new RuntimeException(e);
                } catch (IllegalAccessException e2) {
                    throw new AssertionError(e2);
                }
            }
        }

        public void setNpnProtocols(SSLSocket sSLSocket, List<Protocol> list) {
            if (this.setNpnProtocols != null && this.openSslSocketClass.isInstance(sSLSocket)) {
                try {
                    Object[] objArr = new Object[]{Platform.concatLengthPrefixed(list)};
                    if (this.setAlpnProtocols != null) {
                        this.setAlpnProtocols.invoke(sSLSocket, objArr);
                    }
                    this.setNpnProtocols.invoke(sSLSocket, objArr);
                } catch (IllegalAccessException e) {
                    throw new AssertionError(e);
                } catch (Throwable e2) {
                    throw new RuntimeException(e2);
                }
            }
        }

        public ByteString getNpnSelectedProtocol(SSLSocket sSLSocket) {
            if (this.getNpnSelectedProtocol == null) {
                return null;
            }
            if (!this.openSslSocketClass.isInstance(sSLSocket)) {
                return null;
            }
            try {
                byte[] bArr;
                if (this.getAlpnSelectedProtocol != null) {
                    bArr = (byte[]) this.getAlpnSelectedProtocol.invoke(sSLSocket, new Object[0]);
                    if (bArr != null) {
                        return ByteString.of(bArr);
                    }
                }
                bArr = (byte[]) this.getNpnSelectedProtocol.invoke(sSLSocket, new Object[0]);
                if (bArr == null) {
                    return null;
                }
                return ByteString.of(bArr);
            } catch (Throwable e) {
                throw new RuntimeException(e);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    /* compiled from: Twttr */
    class JdkWithJettyNpnPlatform extends Platform {
        private final Class<?> clientProviderClass;
        private final Method getMethod;
        private final Method putMethod;
        private final Class<?> serverProviderClass;

        public JdkWithJettyNpnPlatform(Method method, Method method2, Class<?> cls, Class<?> cls2) {
            this.putMethod = method;
            this.getMethod = method2;
            this.clientProviderClass = cls;
            this.serverProviderClass = cls2;
        }

        public void setNpnProtocols(SSLSocket sSLSocket, List<Protocol> list) {
            try {
                List arrayList = new ArrayList(list.size());
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    arrayList.add(((Protocol) list.get(i)).name.utf8());
                }
                Object newProxyInstance = Proxy.newProxyInstance(Platform.class.getClassLoader(), new Class[]{this.clientProviderClass, this.serverProviderClass}, new JettyNpnProvider(arrayList));
                this.putMethod.invoke(null, new Object[]{sSLSocket, newProxyInstance});
            } catch (InvocationTargetException e) {
                throw new AssertionError(e);
            } catch (IllegalAccessException e2) {
                throw new AssertionError(e2);
            }
        }

        public ByteString getNpnSelectedProtocol(SSLSocket sSLSocket) {
            try {
                JettyNpnProvider jettyNpnProvider = (JettyNpnProvider) Proxy.getInvocationHandler(this.getMethod.invoke(null, new Object[]{sSLSocket}));
                if (jettyNpnProvider.unsupported || jettyNpnProvider.selected != null) {
                    return jettyNpnProvider.unsupported ? null : ByteString.encodeUtf8(jettyNpnProvider.selected);
                }
                Logger.getLogger("OkHttpClient").log(Level.INFO, "NPN callback dropped so SPDY is disabled. Is npn-boot on the boot class path?");
                return null;
            } catch (InvocationTargetException e) {
                throw new AssertionError();
            } catch (IllegalAccessException e2) {
                throw new AssertionError();
            }
        }
    }

    /* compiled from: Twttr */
    class JettyNpnProvider implements InvocationHandler {
        private final List<String> protocols;
        private String selected;
        private boolean unsupported;

        public JettyNpnProvider(List<String> list) {
            this.protocols = list;
        }

        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class returnType = method.getReturnType();
            if (objArr == null) {
                objArr = Util.EMPTY_STRING_ARRAY;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.valueOf(true);
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.unsupported = true;
                return null;
            } else if (name.equals("protocols") && objArr.length == 0) {
                return this.protocols;
            } else {
                if (name.equals("selectProtocol") && String.class == returnType && objArr.length == 1 && (objArr[0] == null || (objArr[0] instanceof List))) {
                    List list = (List) objArr[0];
                    int size = list.size();
                    for (int i = 0; i < size; i++) {
                        if (this.protocols.contains(list.get(i))) {
                            name = (String) list.get(i);
                            this.selected = name;
                            return name;
                        }
                    }
                    name = (String) this.protocols.get(0);
                    this.selected = name;
                    return name;
                } else if (!name.equals("protocolSelected") || objArr.length != 1) {
                    return method.invoke(this, objArr);
                } else {
                    this.selected = (String) objArr[0];
                    return null;
                }
            }
        }
    }

    static {
        PLATFORM = findPlatform();
    }

    public static Platform get() {
        return PLATFORM;
    }

    public String getPrefix() {
        return "OkHttp";
    }

    public void logW(String str) {
        System.out.println(str);
    }

    public void tagSocket(Socket socket) throws SocketException {
    }

    public void untagSocket(Socket socket) throws SocketException {
    }

    public URI toUriLenient(URL url) throws URISyntaxException {
        return url.toURI();
    }

    public void enableTlsExtensions(SSLSocket sSLSocket, String str) {
    }

    public void supportTlsIntolerantServer(SSLSocket sSLSocket) {
        sSLSocket.setEnabledProtocols(new String[]{"SSLv3"});
    }

    public ByteString getNpnSelectedProtocol(SSLSocket sSLSocket) {
        return null;
    }

    public void setNpnProtocols(SSLSocket sSLSocket, List<Protocol> list) {
    }

    public void connectSocket(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    public OutputStream newDeflaterOutputStream(OutputStream outputStream, Deflater deflater, boolean z) {
        try {
            Constructor constructor = this.deflaterConstructor;
            if (constructor == null) {
                constructor = DeflaterOutputStream.class.getConstructor(new Class[]{OutputStream.class, Deflater.class, Boolean.TYPE});
                this.deflaterConstructor = constructor;
            }
            return (OutputStream) constructor.newInstance(new Object[]{outputStream, deflater, Boolean.valueOf(z)});
        } catch (NoSuchMethodException e) {
            throw new UnsupportedOperationException("Cannot SPDY; no SYNC_FLUSH available");
        } catch (InvocationTargetException e2) {
            InvocationTargetException invocationTargetException = e2;
            throw (invocationTargetException.getCause() instanceof RuntimeException ? (RuntimeException) invocationTargetException.getCause() : new RuntimeException(invocationTargetException.getCause()));
        } catch (Throwable e3) {
            throw new RuntimeException(e3);
        } catch (IllegalAccessException e4) {
            throw new AssertionError();
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private static com.squareup.okhttp.v_1_5_1.internal.Platform findPlatform() {
        /*
        r0 = 0;
        r1 = "com.android.org.conscrypt.OpenSSLSocketImpl";
        r1 = java.lang.Class.forName(r1);	 Catch:{ ClassNotFoundException -> 0x0064, NoSuchMethodException -> 0x0073 }
    L_0x0008:
        r2 = "setUseSessionTickets";
        r3 = 1;
        r3 = new java.lang.Class[r3];	 Catch:{ ClassNotFoundException -> 0x00f5, NoSuchMethodException -> 0x0073 }
        r4 = 0;
        r5 = java.lang.Boolean.TYPE;	 Catch:{ ClassNotFoundException -> 0x00f5, NoSuchMethodException -> 0x0073 }
        r3[r4] = r5;	 Catch:{ ClassNotFoundException -> 0x00f5, NoSuchMethodException -> 0x0073 }
        r2 = r1.getMethod(r2, r3);	 Catch:{ ClassNotFoundException -> 0x00f5, NoSuchMethodException -> 0x0073 }
        r3 = "setHostname";
        r4 = 1;
        r4 = new java.lang.Class[r4];	 Catch:{ ClassNotFoundException -> 0x00f5, NoSuchMethodException -> 0x0073 }
        r5 = 0;
        r6 = java.lang.String.class;
        r4[r5] = r6;	 Catch:{ ClassNotFoundException -> 0x00f5, NoSuchMethodException -> 0x0073 }
        r3 = r1.getMethod(r3, r4);	 Catch:{ ClassNotFoundException -> 0x00f5, NoSuchMethodException -> 0x0073 }
        r4 = "setNpnProtocols";
        r5 = 1;
        r5 = new java.lang.Class[r5];	 Catch:{ NoSuchMethodException -> 0x006d, ClassNotFoundException -> 0x00f5 }
        r6 = 0;
        r7 = byte[].class;
        r5[r6] = r7;	 Catch:{ NoSuchMethodException -> 0x006d, ClassNotFoundException -> 0x00f5 }
        r5 = r1.getMethod(r4, r5);	 Catch:{ NoSuchMethodException -> 0x006d, ClassNotFoundException -> 0x00f5 }
        r4 = "getNpnSelectedProtocol";
        r6 = 0;
        r6 = new java.lang.Class[r6];	 Catch:{ NoSuchMethodException -> 0x00f8, ClassNotFoundException -> 0x00f5 }
        r6 = r1.getMethod(r4, r6);	 Catch:{ NoSuchMethodException -> 0x00f8, ClassNotFoundException -> 0x00f5 }
        r4 = "setAlpnProtocols";
        r7 = 1;
        r7 = new java.lang.Class[r7];	 Catch:{ NoSuchMethodException -> 0x00fc, ClassNotFoundException -> 0x00f5 }
        r8 = 0;
        r9 = byte[].class;
        r7[r8] = r9;	 Catch:{ NoSuchMethodException -> 0x00fc, ClassNotFoundException -> 0x00f5 }
        r4 = r1.getMethod(r4, r7);	 Catch:{ NoSuchMethodException -> 0x00fc, ClassNotFoundException -> 0x00f5 }
        r7 = "getAlpnSelectedProtocol";
        r8 = 0;
        r8 = new java.lang.Class[r8];	 Catch:{ NoSuchMethodException -> 0x0100, ClassNotFoundException -> 0x00f5 }
        r0 = r1.getMethod(r7, r8);	 Catch:{ NoSuchMethodException -> 0x0100, ClassNotFoundException -> 0x00f5 }
    L_0x0058:
        r7 = r0;
        r10 = r4;
        r4 = r5;
        r5 = r6;
        r6 = r10;
    L_0x005d:
        r0 = new com.squareup.okhttp.v_1_5_1.internal.Platform$Android;	 Catch:{ ClassNotFoundException -> 0x00f5, NoSuchMethodException -> 0x0073 }
        r8 = 0;
        r0.<init>(r2, r3, r4, r5, r6, r7, r8);	 Catch:{ ClassNotFoundException -> 0x00f5, NoSuchMethodException -> 0x0073 }
    L_0x0063:
        return r0;
    L_0x0064:
        r1 = move-exception;
        r1 = "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl";
        r1 = java.lang.Class.forName(r1);	 Catch:{ ClassNotFoundException -> 0x00f5, NoSuchMethodException -> 0x0073 }
        goto L_0x0008;
    L_0x006d:
        r4 = move-exception;
        r4 = r0;
    L_0x006f:
        r7 = r0;
        r6 = r0;
        r5 = r0;
        goto L_0x005d;
    L_0x0073:
        r0 = move-exception;
    L_0x0074:
        r0 = "org.eclipse.jetty.npn.NextProtoNego";
        r1 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r2 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r2.<init>();	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r2 = r2.append(r0);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r3 = "$Provider";
        r2 = r2.append(r3);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r2 = r2.toString();	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r2 = java.lang.Class.forName(r2);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r3 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r3.<init>();	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r3 = r3.append(r0);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r4 = "$ClientProvider";
        r3 = r3.append(r4);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r3 = r3.toString();	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r3 = java.lang.Class.forName(r3);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r4 = new java.lang.StringBuilder;	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r4.<init>();	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r0 = r4.append(r0);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r4 = "$ServerProvider";
        r0 = r0.append(r4);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r0 = r0.toString();	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r4 = java.lang.Class.forName(r0);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r0 = "put";
        r5 = 2;
        r5 = new java.lang.Class[r5];	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r6 = 0;
        r7 = javax.net.ssl.SSLSocket.class;
        r5[r6] = r7;	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r6 = 1;
        r5[r6] = r2;	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r2 = r1.getMethod(r0, r5);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r0 = "get";
        r5 = 1;
        r5 = new java.lang.Class[r5];	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r6 = 0;
        r7 = javax.net.ssl.SSLSocket.class;
        r5[r6] = r7;	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r1 = r1.getMethod(r0, r5);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r0 = new com.squareup.okhttp.v_1_5_1.internal.Platform$JdkWithJettyNpnPlatform;	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        r0.<init>(r2, r1, r3, r4);	 Catch:{ ClassNotFoundException -> 0x00eb, NoSuchMethodException -> 0x00f3 }
        goto L_0x0063;
    L_0x00eb:
        r0 = move-exception;
    L_0x00ec:
        r0 = new com.squareup.okhttp.v_1_5_1.internal.Platform;
        r0.<init>();
        goto L_0x0063;
    L_0x00f3:
        r0 = move-exception;
        goto L_0x00ec;
    L_0x00f5:
        r0 = move-exception;
        goto L_0x0074;
    L_0x00f8:
        r4 = move-exception;
        r4 = r5;
        goto L_0x006f;
    L_0x00fc:
        r4 = move-exception;
        r4 = r0;
        goto L_0x0058;
    L_0x0100:
        r7 = move-exception;
        goto L_0x0058;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.v_1_5_1.internal.Platform.findPlatform():com.squareup.okhttp.v_1_5_1.internal.Platform");
    }

    static byte[] concatLengthPrefixed(List<Protocol> list) {
        int i = 0;
        for (Protocol protocol : list) {
            i = (protocol.name.size() + 1) + i;
        }
        Object obj = new byte[i];
        i = 0;
        for (Protocol protocol2 : list) {
            int size = protocol2.name.size();
            int i2 = i + 1;
            obj[i] = (byte) size;
            System.arraycopy(protocol2.name.toByteArray(), 0, obj, i2, size);
            i = i2 + size;
        }
        return obj;
    }
}
