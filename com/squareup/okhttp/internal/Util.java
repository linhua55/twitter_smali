package com.squareup.okhttp.internal;

import com.squareup.okhttp.HttpUrl;
import java.io.Closeable;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import okio.ByteString;
import okio.ab;
import okio.f;

/* compiled from: Twttr */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final String[] EMPTY_STRING_ARRAY;
    public static final Charset UTF_8;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.internal.Util.1 */
    final class AnonymousClass1 implements ThreadFactory {
        final /* synthetic */ boolean val$daemon;
        final /* synthetic */ String val$name;

        AnonymousClass1(String str, boolean z) {
            this.val$name = str;
            this.val$daemon = z;
        }

        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, this.val$name);
            thread.setDaemon(this.val$daemon);
            return thread;
        }
    }

    public static boolean skipAll(okio.ab r12, int r13, java.util.concurrent.TimeUnit r14) throws java.io.IOException {
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxRuntimeException: Can't find block by offset: 0x006a in list []
	at jadx.core.utils.BlockUtils.getBlockByOffset(BlockUtils.java:42)
	at jadx.core.dex.instructions.IfNode.initBlocks(IfNode.java:58)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.initBlocksInIfNodes(BlockFinish.java:48)
	at jadx.core.dex.visitors.blocksmaker.BlockFinish.visit(BlockFinish.java:33)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:37)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:59)
	at jadx.core.ProcessClass.process(ProcessClass.java:42)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:281)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:161)
*/
        /*
        r2 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r6 = java.lang.System.nanoTime();
        r0 = r12.timeout();
        r0 = r0.hasDeadline();
        if (r0 == 0) goto L_0x0051;
    L_0x0013:
        r0 = r12.timeout();
        r0 = r0.deadlineNanoTime();
        r0 = r0 - r6;
    L_0x001c:
        r4 = r12.timeout();
        r8 = (long) r13;
        r8 = r14.toNanos(r8);
        r8 = java.lang.Math.min(r0, r8);
        r8 = r8 + r6;
        r4.deadlineNanoTime(r8);
        r4 = new okio.f;	 Catch:{ InterruptedIOException -> 0x0042, all -> 0x0073 }
        r4.<init>();	 Catch:{ InterruptedIOException -> 0x0042, all -> 0x0073 }
    L_0x0032:
        r8 = 2048; // 0x800 float:2.87E-42 double:1.0118E-320;	 Catch:{ InterruptedIOException -> 0x0042, all -> 0x0073 }
        r8 = r12.read(r4, r8);	 Catch:{ InterruptedIOException -> 0x0042, all -> 0x0073 }
        r10 = -1;	 Catch:{ InterruptedIOException -> 0x0042, all -> 0x0073 }
        r5 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1));	 Catch:{ InterruptedIOException -> 0x0042, all -> 0x0073 }
        if (r5 == 0) goto L_0x0053;	 Catch:{ InterruptedIOException -> 0x0042, all -> 0x0073 }
    L_0x003e:
        r4.u();	 Catch:{ InterruptedIOException -> 0x0042, all -> 0x0073 }
        goto L_0x0032;
    L_0x0042:
        r4 = move-exception;
        r4 = 0;
        r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r2 != 0) goto L_0x006a;
    L_0x0048:
        r0 = r12.timeout();
        r0.clearDeadline();
    L_0x004f:
        r0 = r4;
    L_0x0050:
        return r0;
    L_0x0051:
        r0 = r2;
        goto L_0x001c;
    L_0x0053:
        r4 = 1;
        r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r2 != 0) goto L_0x0061;
    L_0x0058:
        r0 = r12.timeout();
        r0.clearDeadline();
    L_0x005f:
        r0 = r4;
        goto L_0x0050;
    L_0x0061:
        r2 = r12.timeout();
        r0 = r0 + r6;
        r2.deadlineNanoTime(r0);
        goto L_0x005f;
    L_0x006a:
        r2 = r12.timeout();
        r0 = r0 + r6;
        r2.deadlineNanoTime(r0);
        goto L_0x004f;
    L_0x0073:
        r4 = move-exception;
        r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r2 != 0) goto L_0x0080;
    L_0x0078:
        r0 = r12.timeout();
        r0.clearDeadline();
    L_0x007f:
        throw r4;
    L_0x0080:
        r2 = r12.timeout();
        r0 = r0 + r6;
        r2.deadlineNanoTime(r0);
        goto L_0x007f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.Util.skipAll(okio.ab, int, java.util.concurrent.TimeUnit):boolean");
    }

    static {
        EMPTY_BYTE_ARRAY = new byte[0];
        EMPTY_STRING_ARRAY = new String[0];
        UTF_8 = Charset.forName(Util.UTF_8);
    }

    private Util() {
    }

    public static void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static void closeQuietly(Socket socket) {
        if (socket != null) {
            try {
                socket.close();
            } catch (AssertionError e) {
                if (!isAndroidGetsocknameError(e)) {
                    throw e;
                }
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
            }
        }
    }

    public static void closeQuietly(ServerSocket serverSocket) {
        if (serverSocket != null) {
            try {
                serverSocket.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static void closeAll(Closeable closeable, Closeable closeable2) throws IOException {
        Object obj = null;
        try {
            closeable.close();
        } catch (Throwable th) {
            obj = th;
        }
        try {
            closeable2.close();
        } catch (Throwable th2) {
            if (obj == null) {
                Throwable th3 = th2;
            }
        }
        if (obj != null) {
            if (obj instanceof IOException) {
                throw ((IOException) obj);
            } else if (obj instanceof RuntimeException) {
                throw ((RuntimeException) obj);
            } else if (obj instanceof Error) {
                throw ((Error) obj);
            } else {
                throw new AssertionError(obj);
            }
        }
    }

    public static boolean discard(ab abVar, int i, TimeUnit timeUnit) {
        try {
            return skipAll(abVar, i, timeUnit);
        } catch (IOException e) {
            return false;
        }
    }

    public static String md5Hex(String str) {
        Object e;
        try {
            return ByteString.a(MessageDigest.getInstance("MD5").digest(str.getBytes(Util.UTF_8))).d();
        } catch (NoSuchAlgorithmException e2) {
            e = e2;
            throw new AssertionError(e);
        } catch (UnsupportedEncodingException e3) {
            e = e3;
            throw new AssertionError(e);
        }
    }

    public static String shaBase64(String str) {
        Object e;
        try {
            return ByteString.a(MessageDigest.getInstance("SHA-1").digest(str.getBytes(Util.UTF_8))).b();
        } catch (NoSuchAlgorithmException e2) {
            e = e2;
            throw new AssertionError(e);
        } catch (UnsupportedEncodingException e3) {
            e = e3;
            throw new AssertionError(e);
        }
    }

    public static ByteString sha1(ByteString byteString) {
        try {
            return ByteString.a(MessageDigest.getInstance("SHA-1").digest(byteString.g()));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public static <T> List<T> immutableList(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> immutableList(T... tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static <K, V> Map<K, V> immutableMap(Map<K, V> map) {
        return Collections.unmodifiableMap(new LinkedHashMap(map));
    }

    public static ThreadFactory threadFactory(String str, boolean z) {
        return new AnonymousClass1(str, z);
    }

    public static <T> T[] intersect(Class<T> cls, T[] tArr, T[] tArr2) {
        List intersect = intersect(tArr, tArr2);
        return intersect.toArray((Object[]) Array.newInstance(cls, intersect.size()));
    }

    private static <T> List<T> intersect(T[] tArr, T[] tArr2) {
        List<T> arrayList = new ArrayList();
        for (Object obj : tArr) {
            for (Object obj2 : tArr2) {
                if (obj.equals(obj2)) {
                    arrayList.add(obj2);
                    break;
                }
            }
        }
        return arrayList;
    }

    public static String hostHeader(HttpUrl httpUrl) {
        return httpUrl.port() != HttpUrl.defaultPort(httpUrl.scheme()) ? httpUrl.host() + ":" + httpUrl.port() : httpUrl.host();
    }

    public static String toHumanReadableAscii(String str) {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int codePointAt = str.codePointAt(i);
            if (codePointAt <= 31 || codePointAt >= 127) {
                f fVar = new f();
                fVar.a(str, 0, i);
                codePointAt = i;
                while (codePointAt < length) {
                    int codePointAt2 = str.codePointAt(codePointAt);
                    i = (codePointAt2 <= 31 || codePointAt2 >= 127) ? 63 : codePointAt2;
                    fVar.a(i);
                    codePointAt = Character.charCount(codePointAt2) + codePointAt;
                }
                return fVar.r();
            }
            i += Character.charCount(codePointAt);
        }
        return str;
    }

    public static boolean isAndroidGetsocknameError(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains("getsockname failed")) ? false : true;
    }

    public static boolean contains(String[] strArr, String str) {
        return Arrays.asList(strArr).contains(str);
    }

    public static String[] concat(String[] strArr, String str) {
        Object obj = new String[(strArr.length + 1)];
        System.arraycopy(strArr, 0, obj, 0, strArr.length);
        obj[obj.length - 1] = str;
        return obj;
    }
}
