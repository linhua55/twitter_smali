package com.squareup.okhttp;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;

/* compiled from: Twttr */
public interface Dns {
    public static final Dns SYSTEM;

    List<InetAddress> lookup(String str) throws UnknownHostException;

    static {
        SYSTEM = new Dns() {
            public List<InetAddress> lookup(String str) throws UnknownHostException {
                if (str != null) {
                    return Arrays.asList(InetAddress.getAllByName(str));
                }
                throw new UnknownHostException("hostname == null");
            }
        };
    }
}
