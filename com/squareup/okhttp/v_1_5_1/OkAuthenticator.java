package com.squareup.okhttp.v_1_5_1;

import com.squareup.okhttp.v_1_5_1.internal.okio.ByteString;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.Proxy;
import java.net.URL;
import java.util.List;

/* compiled from: Twttr */
public interface OkAuthenticator {

    /* compiled from: Twttr */
    public final class Challenge {
        private final String realm;
        private final String scheme;

        public Challenge(String str, String str2) {
            this.scheme = str;
            this.realm = str2;
        }

        public String getScheme() {
            return this.scheme;
        }

        public String getRealm() {
            return this.realm;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Challenge) && ((Challenge) obj).scheme.equals(this.scheme) && ((Challenge) obj).realm.equals(this.realm);
        }

        public int hashCode() {
            return this.scheme.hashCode() + (this.realm.hashCode() * 31);
        }

        public String toString() {
            return this.scheme + " realm=\"" + this.realm + "\"";
        }
    }

    /* compiled from: Twttr */
    public final class Credential {
        private final String headerValue;

        private Credential(String str) {
            this.headerValue = str;
        }

        public static Credential basic(String str, String str2) {
            try {
                return new Credential("Basic " + ByteString.of((str + ":" + str2).getBytes("ISO-8859-1")).base64());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError();
            }
        }

        public String getHeaderValue() {
            return this.headerValue;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Credential) && ((Credential) obj).headerValue.equals(this.headerValue);
        }

        public int hashCode() {
            return this.headerValue.hashCode();
        }

        public String toString() {
            return this.headerValue;
        }
    }

    Credential authenticate(Proxy proxy, URL url, List<Challenge> list) throws IOException;

    Credential authenticateProxy(Proxy proxy, URL url, List<Challenge> list) throws IOException;
}
