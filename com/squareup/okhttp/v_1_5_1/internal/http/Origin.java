package com.squareup.okhttp.v_1_5_1.internal.http;

/* compiled from: Twttr */
public class Origin {
    private final String hostname;
    private final int port;
    private final String scheme;

    public Origin(String str, String str2, int i) {
        this.scheme = str;
        this.hostname = str2;
        this.port = i;
    }

    public String getHostname() {
        return this.hostname;
    }

    public String getScheme() {
        return this.scheme;
    }

    public int getPort() {
        return this.port;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        Origin origin = (Origin) obj;
        if (this.port != origin.port) {
            return false;
        }
        if (this.hostname == null ? origin.hostname != null : !this.hostname.equals(origin.hostname)) {
            return false;
        }
        if (this.scheme != null) {
            if (this.scheme.equals(origin.scheme)) {
                return true;
            }
        } else if (origin.scheme == null) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int i = 0;
        if (this.scheme != null) {
            hashCode = this.scheme.hashCode();
        } else {
            hashCode = 0;
        }
        hashCode *= 31;
        if (this.hostname != null) {
            i = this.hostname.hashCode();
        }
        return ((hashCode + i) * 31) + this.port;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getClass().getName()).append("[");
        stringBuilder.append("scheme = ").append(this.scheme).append("  ");
        stringBuilder.append("hostname = ").append(this.hostname).append("  ");
        stringBuilder.append("port = ").append(this.port);
        stringBuilder.append("]");
        return stringBuilder.toString();
    }
}
