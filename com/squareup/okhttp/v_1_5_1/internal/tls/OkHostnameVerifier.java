package com.squareup.okhttp.v_1_5_1.internal.tls;

import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

/* compiled from: Twttr */
public final class OkHostnameVerifier implements HostnameVerifier {
    private static final int ALT_DNS_NAME = 2;
    private static final int ALT_IPA_NAME = 7;
    public static final OkHostnameVerifier INSTANCE;
    private static final Pattern VERIFY_AS_IP_ADDRESS;

    static {
        INSTANCE = new OkHostnameVerifier();
        VERIFY_AS_IP_ADDRESS = Pattern.compile("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
    }

    private OkHostnameVerifier() {
    }

    public boolean verify(String str, SSLSession sSLSession) {
        try {
            return verify(str, (X509Certificate) sSLSession.getPeerCertificates()[0]);
        } catch (SSLException e) {
            return false;
        }
    }

    public boolean verify(String str, X509Certificate x509Certificate) {
        return verifyAsIpAddress(str) ? verifyIpAddress(str, x509Certificate) : verifyHostName(str, x509Certificate);
    }

    static boolean verifyAsIpAddress(String str) {
        return VERIFY_AS_IP_ADDRESS.matcher(str).matches();
    }

    private boolean verifyIpAddress(String str, X509Certificate x509Certificate) {
        for (String equalsIgnoreCase : getSubjectAltNames(x509Certificate, ALT_IPA_NAME)) {
            if (str.equalsIgnoreCase(equalsIgnoreCase)) {
                return true;
            }
        }
        return false;
    }

    private boolean verifyHostName(String str, X509Certificate x509Certificate) {
        String findMostSpecific;
        String toLowerCase = str.toLowerCase(Locale.US);
        boolean z = false;
        for (String findMostSpecific2 : getSubjectAltNames(x509Certificate, ALT_DNS_NAME)) {
            if (verifyHostName(toLowerCase, findMostSpecific2)) {
                return true;
            }
            z = true;
        }
        if (!z) {
            findMostSpecific2 = new DistinguishedNameParser(x509Certificate.getSubjectX500Principal()).findMostSpecific("cn");
            if (findMostSpecific2 != null) {
                return verifyHostName(toLowerCase, findMostSpecific2);
            }
        }
        return false;
    }

    private List<String> getSubjectAltNames(X509Certificate x509Certificate, int i) {
        List<String> arrayList = new ArrayList();
        try {
            Collection<List> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
            if (subjectAlternativeNames == null) {
                return Collections.emptyList();
            }
            for (List list : subjectAlternativeNames) {
                if (list != null && list.size() >= ALT_DNS_NAME) {
                    Integer num = (Integer) list.get(0);
                    if (num != null && num.intValue() == i) {
                        String str = (String) list.get(1);
                        if (str != null) {
                            arrayList.add(str);
                        }
                    }
                }
            }
            return arrayList;
        } catch (CertificateParsingException e) {
            return Collections.emptyList();
        }
    }

    public boolean verifyHostName(String str, String str2) {
        if (str == null || str.length() == 0 || str2 == null || str2.length() == 0) {
            return false;
        }
        String toLowerCase = str2.toLowerCase(Locale.US);
        if (!toLowerCase.contains("*")) {
            return str.equals(toLowerCase);
        }
        if (toLowerCase.startsWith("*.") && str.regionMatches(0, toLowerCase, ALT_DNS_NAME, toLowerCase.length() - 2)) {
            return true;
        }
        int indexOf = toLowerCase.indexOf(42);
        if (indexOf > toLowerCase.indexOf(46)) {
            return false;
        }
        if (!str.regionMatches(0, toLowerCase, 0, indexOf)) {
            return false;
        }
        int length = toLowerCase.length() - (indexOf + 1);
        int length2 = str.length() - length;
        if (str.indexOf(46, indexOf) < length2 && !str.endsWith(".clients.google.com")) {
            return false;
        }
        if (str.regionMatches(length2, toLowerCase, indexOf + 1, length)) {
            return true;
        }
        return false;
    }
}
