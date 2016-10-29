package com.squareup.okhttp.v_1_5_1.internal;

import com.squareup.okhttp.v_1_5_1.Protocol;
import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import com.squareup.okhttp.v_1_5_1.internal.okio.OkBuffer;
import com.squareup.okhttp.v_1_5_1.internal.okio.Source;
import com.squareup.okhttp.v_1_5_1.internal.spdy.Header;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final InputStream EMPTY_INPUT_STREAM;
    public static final String[] EMPTY_STRING_ARRAY;
    public static final List<Protocol> HTTP2_AND_HTTP_11;
    public static final List<Protocol> HTTP2_SPDY3_AND_HTTP;
    public static final List<Protocol> SPDY3_AND_HTTP11;
    public static final Charset US_ASCII;
    public static final Charset UTF_8;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.v_1_5_1.internal.Util.1 */
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

    static {
        EMPTY_BYTE_ARRAY = new byte[0];
        EMPTY_STRING_ARRAY = new String[0];
        EMPTY_INPUT_STREAM = new ByteArrayInputStream(EMPTY_BYTE_ARRAY);
        US_ASCII = Charset.forName("US-ASCII");
        UTF_8 = Charset.forName(Util.UTF_8);
        HTTP2_SPDY3_AND_HTTP = immutableList(Arrays.asList(new Protocol[]{Protocol.HTTP_2, Protocol.SPDY_3, Protocol.HTTP_11}));
        SPDY3_AND_HTTP11 = immutableList(Arrays.asList(new Protocol[]{Protocol.SPDY_3, Protocol.HTTP_11}));
        HTTP2_AND_HTTP_11 = immutableList(Arrays.asList(new Protocol[]{Protocol.HTTP_2, Protocol.HTTP_11}));
    }

    private Util() {
    }

    public static int getEffectivePort(URI uri) {
        return getEffectivePort(uri.getScheme(), uri.getPort());
    }

    public static int getEffectivePort(URL url) {
        return getEffectivePort(url.getProtocol(), url.getPort());
    }

    private static int getEffectivePort(String str, int i) {
        return i != -1 ? i : getDefaultPort(str);
    }

    public static int getDefaultPort(String str) {
        if ("http".equals(str)) {
            return 80;
        }
        if ("https".equals(str)) {
            return 443;
        }
        return -1;
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
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
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

    public static void deleteContents(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        int length = listFiles.length;
        int i = 0;
        while (i < length) {
            File file2 = listFiles[i];
            if (file2.isDirectory()) {
                deleteContents(file2);
            }
            if (file2.delete()) {
                i++;
            } else {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    public static void readFully(InputStream inputStream, byte[] bArr) throws IOException {
        readFully(inputStream, bArr, 0, bArr.length);
    }

    public static void readFully(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        if (i2 != 0) {
            if (inputStream == null) {
                throw new NullPointerException("in == null");
            } else if (bArr == null) {
                throw new NullPointerException("dst == null");
            } else {
                checkOffsetAndCount((long) bArr.length, (long) i, (long) i2);
                while (i2 > 0) {
                    int read = inputStream.read(bArr, i, i2);
                    if (read < 0) {
                        throw new EOFException();
                    }
                    i += read;
                    i2 -= read;
                }
            }
        }
    }

    public static OkBuffer readFully(Source source) throws IOException {
        OkBuffer okBuffer = new OkBuffer();
        do {
        } while (source.read(okBuffer, 2048) != -1);
        source.close();
        return okBuffer;
    }

    public static boolean skipAll(Source source, int i) throws IOException {
        long nanoTime = System.nanoTime();
        OkBuffer okBuffer = new OkBuffer();
        while (TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - nanoTime) < ((long) i)) {
            if (source.read(okBuffer, 2048) == -1) {
                return true;
            }
            okBuffer.clear();
        }
        return false;
    }

    public static int copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[8192];
        int i = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                return i;
            }
            i += read;
            outputStream.write(bArr, 0, read);
        }
    }

    public static String hash(String str) {
        try {
            return ByteString.of(MessageDigest.getInstance("MD5").digest(str.getBytes(Util.UTF_8))).hex();
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        } catch (UnsupportedEncodingException e2) {
            throw new AssertionError(e2);
        }
    }

    public static <T> List<T> immutableList(List<T> list) {
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static <T> List<T> immutableList(T[] tArr) {
        return Collections.unmodifiableList(Arrays.asList((Object[]) tArr.clone()));
    }

    public static ThreadFactory threadFactory(String str, boolean z) {
        return new AnonymousClass1(str, z);
    }

    public static List<Header> headerEntries(String... strArr) {
        List<Header> arrayList = new ArrayList(strArr.length / 2);
        for (int i = 0; i < strArr.length; i += 2) {
            arrayList.add(new Header(strArr[i], strArr[i + 1]));
        }
        return arrayList;
    }

    public static Protocol getProtocol(ByteString byteString) throws IOException {
        if (byteString == null) {
            return Protocol.HTTP_11;
        }
        for (Protocol protocol : Protocol.values()) {
            if (protocol.name.equals(byteString)) {
                return protocol;
            }
        }
        throw new IOException("Unexpected protocol: " + byteString.utf8());
    }
}
