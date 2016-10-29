package com.twitter.internal.network;

/* compiled from: Twttr */
public enum HttpOperation$Protocol {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_2("spdy/2"),
    SPDY_3("spdy/3"),
    SPDY_3_1("spdy/3.1");
    
    private final String mName;

    private HttpOperation$Protocol(String str) {
        this.mName = str;
    }

    public String toString() {
        return this.mName;
    }

    public static HttpOperation$Protocol a(String str) {
        try {
            return valueOf(str.toUpperCase().replaceAll("[-/.]", "_"));
        } catch (IllegalArgumentException e) {
            return null;
        }
    }
}
