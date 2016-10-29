package com.twitter.util;

import bbn;
import cun;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

/* compiled from: Twttr */
public class k {
    public static final byte[] a;
    private static final char[] b;

    static {
        a = new byte[0];
        b = "0123456789abcdef".toCharArray();
    }

    public static <T> T a(byte[] bArr, Map<Long, Class<?>> map) {
        Closeable objectInputStream;
        Throwable e;
        Throwable th;
        T t = null;
        if (!(bArr == null || bArr.length == 0)) {
            Closeable byteArrayInputStream = new ByteArrayInputStream(bArr);
            if (map == null) {
                try {
                    objectInputStream = new ObjectInputStream(byteArrayInputStream);
                } catch (IOException e2) {
                    e = e2;
                    objectInputStream = t;
                    try {
                        bbn.a(e);
                        cun.a(objectInputStream);
                        cun.a(byteArrayInputStream);
                        return t;
                    } catch (Throwable th2) {
                        th = th2;
                        cun.a(objectInputStream);
                        cun.a(byteArrayInputStream);
                        throw th;
                    }
                } catch (ClassNotFoundException e3) {
                    e = e3;
                    T t2 = t;
                    bbn.a(e);
                    cun.a(objectInputStream);
                    cun.a(byteArrayInputStream);
                    return t;
                } catch (IllegalStateException e4) {
                    e = e4;
                    objectInputStream = t;
                    bbn.a(e);
                    cun.a(objectInputStream);
                    cun.a(byteArrayInputStream);
                    return t;
                } catch (Throwable e5) {
                    objectInputStream = t;
                    th = e5;
                    cun.a(objectInputStream);
                    cun.a(byteArrayInputStream);
                    throw th;
                }
            }
            objectInputStream = new l(byteArrayInputStream, map);
            try {
                t = objectInputStream.readObject();
                cun.a(objectInputStream);
                cun.a(byteArrayInputStream);
            } catch (IOException e6) {
                e5 = e6;
                bbn.a(e5);
                cun.a(objectInputStream);
                cun.a(byteArrayInputStream);
                return t;
            } catch (ClassNotFoundException e7) {
                e5 = e7;
                bbn.a(e5);
                cun.a(objectInputStream);
                cun.a(byteArrayInputStream);
                return t;
            } catch (IllegalStateException e8) {
                e5 = e8;
                bbn.a(e5);
                cun.a(objectInputStream);
                cun.a(byteArrayInputStream);
                return t;
            }
        }
        return t;
    }

    public static String a(InputStream inputStream) {
        return a(inputStream, false);
    }

    public static String a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static String a(byte[] bArr, int i, int i2) {
        char[] cArr = new char[(i2 * 2)];
        for (int i3 = 0; i3 < i2; i3++) {
            cArr[i3 * 2] = b[(bArr[i + i3] >> 4) & 15];
            cArr[(i3 * 2) + 1] = b[bArr[i + i3] & 15];
        }
        return new String(cArr);
    }

    private static String a(InputStream inputStream, boolean z) {
        try {
            MessageDigest instance = MessageDigest.getInstance("MD5");
            byte[] bArr = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                instance.update(bArr, 0, read);
            }
            if (z) {
                return b(instance.digest());
            }
            return a(instance.digest());
        } catch (NoSuchAlgorithmException e) {
            return null;
        } catch (IOException e2) {
            return null;
        }
    }

    public static String a(String str) {
        try {
            return b(MessageDigest.getInstance("MD5").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static String b(String str) {
        try {
            return b(MessageDigest.getInstance("SHA1").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e) {
            return null;
        }
    }

    public static String b(byte[] bArr) {
        StringBuilder stringBuilder = new StringBuilder();
        for (byte b : bArr) {
            String toHexString = Integer.toHexString(b & 255);
            if (toHexString.length() < 2) {
                stringBuilder.append('0').append(toHexString);
            } else {
                stringBuilder.append(toHexString);
            }
        }
        return stringBuilder.toString();
    }
}
