package com.squareup.okhttp.v_1_5_1.internal;

import java.net.InetAddress;
import java.net.UnknownHostException;

/* compiled from: Twttr */
public interface Dns {
    public static final Dns DEFAULT;

    InetAddress[] getAllByName(String str) throws UnknownHostException;

    static {
        DEFAULT = new Dns() {
            public InetAddress[] getAllByName(String str) throws UnknownHostException {
                if (str != null) {
                    return InetAddress.getAllByName(str);
                }
                throw new UnknownHostException("host == null");
            }
        };
    }
}
