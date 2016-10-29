package com.squareup.okhttp.internal;

import android.util.Log;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.tls.AndroidTrustRootIndex;
import com.squareup.okhttp.internal.tls.RealTrustRootIndex;
import com.squareup.okhttp.internal.tls.TrustRootIndex;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import okio.f;

/* compiled from: Twttr */
public class Platform {
    private static final Platform PLATFORM;

    /* compiled from: Twttr */
    class Android extends Platform {
        private static final int MAX_LOG_LENGTH = 4000;
        private final OptionalMethod<Socket> getAlpnSelectedProtocol;
        private final OptionalMethod<Socket> setAlpnProtocols;
        private final OptionalMethod<Socket> setHostname;
        private final OptionalMethod<Socket> setUseSessionTickets;
        private final Class<?> sslParametersClass;
        private final Method trafficStatsTagSocket;
        private final Method trafficStatsUntagSocket;

        public Android(Class<?> cls, OptionalMethod<Socket> optionalMethod, OptionalMethod<Socket> optionalMethod2, Method method, Method method2, OptionalMethod<Socket> optionalMethod3, OptionalMethod<Socket> optionalMethod4) {
            this.sslParametersClass = cls;
            this.setUseSessionTickets = optionalMethod;
            this.setHostname = optionalMethod2;
            this.trafficStatsTagSocket = method;
            this.trafficStatsUntagSocket = method2;
            this.getAlpnSelectedProtocol = optionalMethod3;
            this.setAlpnProtocols = optionalMethod4;
        }

        public void connectSocket(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
            try {
                socket.connect(inetSocketAddress, i);
            } catch (Throwable e) {
                if (Util.isAndroidGetsocknameError(e)) {
                    throw new IOException(e);
                }
                throw e;
            } catch (Throwable e2) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e2);
                throw iOException;
            }
        }

        public X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory) {
            Object readFieldOrNull;
            Object readFieldOrNull2 = Platform.readFieldOrNull(sSLSocketFactory, this.sslParametersClass, "sslParameters");
            if (readFieldOrNull2 == null) {
                try {
                    readFieldOrNull = Platform.readFieldOrNull(sSLSocketFactory, Class.forName("com.google.android.gms.org.conscrypt.SSLParametersImpl", false, sSLSocketFactory.getClass().getClassLoader()), "sslParameters");
                } catch (ClassNotFoundException e) {
                    return null;
                }
            }
            readFieldOrNull = readFieldOrNull2;
            X509TrustManager x509TrustManager = (X509TrustManager) Platform.readFieldOrNull(readFieldOrNull, X509TrustManager.class, "x509TrustManager");
            return x509TrustManager != null ? x509TrustManager : (X509TrustManager) Platform.readFieldOrNull(readFieldOrNull, X509TrustManager.class, "trustManager");
        }

        public TrustRootIndex trustRootIndex(X509TrustManager x509TrustManager) {
            TrustRootIndex trustRootIndex = AndroidTrustRootIndex.get(x509TrustManager);
            return trustRootIndex != null ? trustRootIndex : super.trustRootIndex(x509TrustManager);
        }

        public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
            if (str != null) {
                this.setUseSessionTickets.invokeOptionalWithoutCheckedException(sSLSocket, Boolean.valueOf(true));
                this.setHostname.invokeOptionalWithoutCheckedException(sSLSocket, str);
            }
            if (this.setAlpnProtocols != null && this.setAlpnProtocols.isSupported(sSLSocket)) {
                this.setAlpnProtocols.invokeWithoutCheckedException(sSLSocket, Platform.concatLengthPrefixed(list));
            }
        }

        public String getSelectedProtocol(SSLSocket sSLSocket) {
            if (this.getAlpnSelectedProtocol == null || !this.getAlpnSelectedProtocol.isSupported(sSLSocket)) {
                return null;
            }
            byte[] bArr = (byte[]) this.getAlpnSelectedProtocol.invokeWithoutCheckedException(sSLSocket, new Object[0]);
            return bArr != null ? new String(bArr, Util.UTF_8) : null;
        }

        public void tagSocket(Socket socket) throws SocketException {
            if (this.trafficStatsTagSocket != null) {
                try {
                    this.trafficStatsTagSocket.invoke(null, new Object[]{socket});
                } catch (Throwable e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException(e2.getCause());
                }
            }
        }

        public void untagSocket(Socket socket) throws SocketException {
            if (this.trafficStatsUntagSocket != null) {
                try {
                    this.trafficStatsUntagSocket.invoke(null, new Object[]{socket});
                } catch (Throwable e) {
                    throw new RuntimeException(e);
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException(e2.getCause());
                }
            }
        }

        public void log(String str) {
            int i = 0;
            int length = str.length();
            while (i < length) {
                int min;
                int indexOf = str.indexOf(10, i);
                if (indexOf == -1) {
                    indexOf = length;
                }
                while (true) {
                    min = Math.min(indexOf, i + MAX_LOG_LENGTH);
                    Log.d("OkHttp", str.substring(i, min));
                    if (min >= indexOf) {
                        break;
                    }
                    i = min;
                }
                i = min + 1;
            }
        }
    }

    /* compiled from: Twttr */
    class JdkPlatform extends Platform {
        private final Class<?> sslContextClass;

        public JdkPlatform(Class<?> cls) {
            this.sslContextClass = cls;
        }

        public X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory) {
            Object readFieldOrNull = Platform.readFieldOrNull(sSLSocketFactory, this.sslContextClass, "context");
            if (readFieldOrNull == null) {
                return null;
            }
            return (X509TrustManager) Platform.readFieldOrNull(readFieldOrNull, X509TrustManager.class, "trustManager");
        }
    }

    /* compiled from: Twttr */
    class JdkWithJettyBootPlatform extends JdkPlatform {
        private final Class<?> clientProviderClass;
        private final Method getMethod;
        private final Method putMethod;
        private final Method removeMethod;
        private final Class<?> serverProviderClass;

        public JdkWithJettyBootPlatform(Class<?> cls, Method method, Method method2, Method method3, Class<?> cls2, Class<?> cls3) {
            super(cls);
            this.putMethod = method;
            this.getMethod = method2;
            this.removeMethod = method3;
            this.clientProviderClass = cls2;
            this.serverProviderClass = cls3;
        }

        public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
            Object newProxyInstance;
            List arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Protocol protocol = (Protocol) list.get(i);
                if (protocol != Protocol.HTTP_1_0) {
                    arrayList.add(protocol.toString());
                }
            }
            try {
                newProxyInstance = Proxy.newProxyInstance(Platform.class.getClassLoader(), new Class[]{this.clientProviderClass, this.serverProviderClass}, new JettyNegoProvider(arrayList));
                this.putMethod.invoke(null, new Object[]{sSLSocket, newProxyInstance});
            } catch (InvocationTargetException e) {
                newProxyInstance = e;
                throw new AssertionError(newProxyInstance);
            } catch (IllegalAccessException e2) {
                newProxyInstance = e2;
                throw new AssertionError(newProxyInstance);
            }
        }

        public void afterHandshake(SSLSocket sSLSocket) {
            try {
                this.removeMethod.invoke(null, new Object[]{sSLSocket});
            } catch (IllegalAccessException e) {
                throw new AssertionError();
            } catch (InvocationTargetException e2) {
                throw new AssertionError();
            }
        }

        public String getSelectedProtocol(SSLSocket sSLSocket) {
            try {
                JettyNegoProvider jettyNegoProvider = (JettyNegoProvider) Proxy.getInvocationHandler(this.getMethod.invoke(null, new Object[]{sSLSocket}));
                if (jettyNegoProvider.unsupported || jettyNegoProvider.selected != null) {
                    return jettyNegoProvider.unsupported ? null : jettyNegoProvider.selected;
                }
                Internal.logger.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                return null;
            } catch (InvocationTargetException e) {
                throw new AssertionError();
            } catch (IllegalAccessException e2) {
                throw new AssertionError();
            }
        }
    }

    /* compiled from: Twttr */
    class JettyNegoProvider implements InvocationHandler {
        private final List<String> protocols;
        private String selected;
        private boolean unsupported;

        public JettyNegoProvider(List<String> list) {
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
                if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1 && (objArr[0] instanceof List)) {
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
                } else if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
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

    public X509TrustManager trustManager(SSLSocketFactory sSLSocketFactory) {
        return null;
    }

    public TrustRootIndex trustRootIndex(X509TrustManager x509TrustManager) {
        return new RealTrustRootIndex(x509TrustManager.getAcceptedIssuers());
    }

    public void configureTlsExtensions(SSLSocket sSLSocket, String str, List<Protocol> list) {
    }

    public void afterHandshake(SSLSocket sSLSocket) {
    }

    public String getSelectedProtocol(SSLSocket sSLSocket) {
        return null;
    }

    public void connectSocket(Socket socket, InetSocketAddress inetSocketAddress, int i) throws IOException {
        socket.connect(inetSocketAddress, i);
    }

    public void log(String str) {
        System.out.println(str);
    }

    private static Platform findPlatform() {
        Class cls;
        Method method;
        OptionalMethod optionalMethod;
        OptionalMethod optionalMethod2;
        Method method2;
        OptionalMethod optionalMethod3;
        Method method3;
        OptionalMethod optionalMethod4;
        Method method4;
        try {
            cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
        } catch (ClassNotFoundException e) {
            cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
        }
        try {
            OptionalMethod optionalMethod5 = new OptionalMethod(null, "setUseSessionTickets", Boolean.TYPE);
            OptionalMethod optionalMethod6 = new OptionalMethod(null, "setHostname", String.class);
            try {
                Class cls2 = Class.forName("android.net.TrafficStats");
                method = cls2.getMethod("tagSocket", new Class[]{Socket.class});
                try {
                    OptionalMethod optionalMethod7;
                    OptionalMethod optionalMethod8;
                    Method method5 = cls2.getMethod("untagSocket", new Class[]{Socket.class});
                    try {
                        Class.forName("android.net.Network");
                        optionalMethod = new OptionalMethod(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                    } catch (ClassNotFoundException e2) {
                        optionalMethod2 = null;
                        optionalMethod7 = optionalMethod2;
                        optionalMethod2 = null;
                        method2 = method5;
                        optionalMethod3 = optionalMethod2;
                        optionalMethod8 = optionalMethod7;
                        method3 = method;
                        optionalMethod4 = optionalMethod8;
                        return new Android(cls, optionalMethod5, optionalMethod6, method3, method2, optionalMethod4, optionalMethod3);
                    } catch (NoSuchMethodException e3) {
                        optionalMethod2 = null;
                        method2 = method5;
                        optionalMethod3 = null;
                        method3 = method;
                        optionalMethod4 = optionalMethod2;
                        return new Android(cls, optionalMethod5, optionalMethod6, method3, method2, optionalMethod4, optionalMethod3);
                    }
                    try {
                        optionalMethod2 = new OptionalMethod(null, "setAlpnProtocols", byte[].class);
                        optionalMethod7 = optionalMethod;
                    } catch (ClassNotFoundException e4) {
                        optionalMethod2 = optionalMethod;
                        optionalMethod7 = optionalMethod2;
                        optionalMethod2 = null;
                        method2 = method5;
                        optionalMethod3 = optionalMethod2;
                        optionalMethod8 = optionalMethod7;
                        method3 = method;
                        optionalMethod4 = optionalMethod8;
                        return new Android(cls, optionalMethod5, optionalMethod6, method3, method2, optionalMethod4, optionalMethod3);
                    } catch (NoSuchMethodException e5) {
                        optionalMethod2 = optionalMethod;
                        method2 = method5;
                        optionalMethod3 = null;
                        method3 = method;
                        optionalMethod4 = optionalMethod2;
                        return new Android(cls, optionalMethod5, optionalMethod6, method3, method2, optionalMethod4, optionalMethod3);
                    }
                    method2 = method5;
                    optionalMethod3 = optionalMethod2;
                    optionalMethod8 = optionalMethod7;
                    method3 = method;
                    optionalMethod4 = optionalMethod8;
                } catch (ClassNotFoundException e6) {
                    method4 = method;
                    method2 = null;
                    method = method4;
                    optionalMethod2 = null;
                    optionalMethod3 = null;
                    method3 = method;
                    optionalMethod4 = optionalMethod2;
                    return new Android(cls, optionalMethod5, optionalMethod6, method3, method2, optionalMethod4, optionalMethod3);
                } catch (NoSuchMethodException e7) {
                    optionalMethod2 = null;
                    method2 = null;
                    optionalMethod3 = null;
                    method3 = method;
                    optionalMethod4 = optionalMethod2;
                    return new Android(cls, optionalMethod5, optionalMethod6, method3, method2, optionalMethod4, optionalMethod3);
                }
            } catch (ClassNotFoundException e8) {
                method4 = null;
                method2 = null;
                method = method4;
                optionalMethod2 = null;
                optionalMethod3 = null;
                method3 = method;
                optionalMethod4 = optionalMethod2;
                return new Android(cls, optionalMethod5, optionalMethod6, method3, method2, optionalMethod4, optionalMethod3);
            } catch (NoSuchMethodException e9) {
                optionalMethod2 = null;
                method2 = null;
                method = null;
                optionalMethod3 = null;
                method3 = method;
                optionalMethod4 = optionalMethod2;
                return new Android(cls, optionalMethod5, optionalMethod6, method3, method2, optionalMethod4, optionalMethod3);
            }
            return new Android(cls, optionalMethod5, optionalMethod6, method3, method2, optionalMethod4, optionalMethod3);
        } catch (ClassNotFoundException e10) {
            try {
                cls = Class.forName("sun.security.ssl.SSLContextImpl");
                try {
                    String str = "org.eclipse.jetty.alpn.ALPN";
                    Class cls3 = Class.forName(str);
                    Class cls4 = Class.forName(str + "$Provider");
                    Class cls5 = Class.forName(str + "$ClientProvider");
                    Class cls6 = Class.forName(str + "$ServerProvider");
                    return new JdkWithJettyBootPlatform(cls, cls3.getMethod("put", new Class[]{SSLSocket.class, cls4}), cls3.getMethod("get", new Class[]{SSLSocket.class}), cls3.getMethod("remove", new Class[]{SSLSocket.class}), cls5, cls6);
                } catch (ClassNotFoundException e11) {
                    return new JdkPlatform(cls);
                } catch (NoSuchMethodException e12) {
                    return new JdkPlatform(cls);
                }
            } catch (ClassNotFoundException e13) {
                return new Platform();
            }
        }
    }

    static byte[] concatLengthPrefixed(List<Protocol> list) {
        f fVar = new f();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Protocol protocol = (Protocol) list.get(i);
            if (protocol != Protocol.HTTP_1_0) {
                fVar.b(protocol.toString().length());
                fVar.a(protocol.toString());
            }
        }
        return fVar.t();
    }

    static <T> T readFieldOrNull(Object obj, Class<T> cls, String str) {
        Class cls2 = obj.getClass();
        while (cls2 != Object.class) {
            try {
                Field declaredField = cls2.getDeclaredField(str);
                declaredField.setAccessible(true);
                Object obj2 = declaredField.get(obj);
                if (obj2 == null || !cls.isInstance(obj2)) {
                    return null;
                }
                return cls.cast(obj2);
            } catch (NoSuchFieldException e) {
                cls2 = cls2.getSuperclass();
            } catch (IllegalAccessException e2) {
                throw new AssertionError();
            }
        }
        if (!str.equals("delegate")) {
            Object readFieldOrNull = readFieldOrNull(obj, Object.class, "delegate");
            if (readFieldOrNull != null) {
                return readFieldOrNull(readFieldOrNull, cls, str);
            }
        }
        return null;
    }
}
