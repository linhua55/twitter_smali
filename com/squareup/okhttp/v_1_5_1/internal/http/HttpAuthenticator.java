package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.OkAuthenticator;
import com.squareup.okhttp.v_1_5_1.OkAuthenticator.Challenge;
import com.squareup.okhttp.v_1_5_1.OkAuthenticator.Credential;
import java.io.IOException;
import java.net.Authenticator;
import java.net.Authenticator.RequestorType;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class HttpAuthenticator {
    public static final OkAuthenticator SYSTEM_DEFAULT;

    static {
        SYSTEM_DEFAULT = new OkAuthenticator() {
            public Credential authenticate(Proxy proxy, URL url, List<Challenge> list) throws IOException {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    Challenge challenge = (Challenge) list.get(i);
                    if ("Basic".equalsIgnoreCase(challenge.getScheme())) {
                        PasswordAuthentication requestPasswordAuthentication = Authenticator.requestPasswordAuthentication(url.getHost(), getConnectToInetAddress(proxy, url), url.getPort(), url.getProtocol(), challenge.getRealm(), challenge.getScheme(), url, RequestorType.SERVER);
                        if (requestPasswordAuthentication != null) {
                            return Credential.basic(requestPasswordAuthentication.getUserName(), new String(requestPasswordAuthentication.getPassword()));
                        }
                    }
                }
                return null;
            }

            public Credential authenticateProxy(Proxy proxy, URL url, List<Challenge> list) throws IOException {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    Challenge challenge = (Challenge) list.get(i);
                    if ("Basic".equalsIgnoreCase(challenge.getScheme())) {
                        InetSocketAddress inetSocketAddress = (InetSocketAddress) proxy.address();
                        PasswordAuthentication requestPasswordAuthentication = Authenticator.requestPasswordAuthentication(inetSocketAddress.getHostName(), getConnectToInetAddress(proxy, url), inetSocketAddress.getPort(), url.getProtocol(), challenge.getRealm(), challenge.getScheme(), url, RequestorType.PROXY);
                        if (requestPasswordAuthentication != null) {
                            return Credential.basic(requestPasswordAuthentication.getUserName(), new String(requestPasswordAuthentication.getPassword()));
                        }
                    }
                }
                return null;
            }

            private InetAddress getConnectToInetAddress(Proxy proxy, URL url) throws IOException {
                return (proxy == null || proxy.type() == Type.DIRECT) ? InetAddress.getByName(url.getHost()) : ((InetSocketAddress) proxy.address()).getAddress();
            }
        };
    }

    private HttpAuthenticator() {
    }

    public static Request processAuthHeader(OkAuthenticator okAuthenticator, Response response, Proxy proxy) throws IOException {
        String str;
        String str2;
        if (response.code() == 401) {
            str = "WWW-Authenticate";
            str2 = "Authorization";
        } else if (response.code() == 407) {
            str = "Proxy-Authenticate";
            str2 = "Proxy-Authorization";
        } else {
            throw new IllegalArgumentException();
        }
        List parseChallenges = parseChallenges(response.headers(), str);
        if (parseChallenges.isEmpty()) {
            return null;
        }
        Request request = response.request();
        Credential authenticateProxy = response.code() == 407 ? okAuthenticator.authenticateProxy(proxy, request.url(), parseChallenges) : okAuthenticator.authenticate(proxy, request.url(), parseChallenges);
        if (authenticateProxy == null) {
            return null;
        }
        return request.newBuilder().header(str2, authenticateProxy.getHeaderValue()).build();
    }

    private static List<Challenge> parseChallenges(Headers headers, String str) {
        List<Challenge> arrayList = new ArrayList();
        for (int i = 0; i < headers.size(); i++) {
            if (str.equalsIgnoreCase(headers.name(i))) {
                String value = headers.value(i);
                int i2 = 0;
                while (i2 < value.length()) {
                    int skipUntil = HeaderParser.skipUntil(value, i2, " ");
                    String trim = value.substring(i2, skipUntil).trim();
                    skipUntil = HeaderParser.skipWhitespace(value, skipUntil);
                    if (!value.regionMatches(true, skipUntil, "realm=\"", 0, "realm=\"".length())) {
                        break;
                    }
                    i2 = "realm=\"".length() + skipUntil;
                    skipUntil = HeaderParser.skipUntil(value, i2, "\"");
                    String substring = value.substring(i2, skipUntil);
                    i2 = HeaderParser.skipWhitespace(value, HeaderParser.skipUntil(value, skipUntil + 1, ",") + 1);
                    arrayList.add(new Challenge(trim, substring));
                }
            }
        }
        return arrayList;
    }
}
