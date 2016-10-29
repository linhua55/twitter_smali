package com.google.android.gms.internal;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public abstract class bn {
    private static MessageDigest b;
    protected Object a;

    static {
        b = null;
    }

    public bn() {
        this.a = new Object();
    }

    protected MessageDigest a() {
        MessageDigest messageDigest;
        synchronized (this.a) {
            if (b != null) {
                messageDigest = b;
            } else {
                for (int i = 0; i < 2; i++) {
                    try {
                        b = MessageDigest.getInstance("MD5");
                    } catch (NoSuchAlgorithmException e) {
                    }
                }
                messageDigest = b;
            }
        }
        return messageDigest;
    }

    abstract byte[] a(String str);
}
