package com.squareup.okhttp;

import com.facebook.shimmer.b;
import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.NalUnitUtil;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;
import java.net.IDN;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import okio.f;

/* compiled from: Twttr */
public final class HttpUrl {
    static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    static final String FRAGMENT_ENCODE_SET = "";
    static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    private static final char[] HEX_DIGITS;
    static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    static final String QUERY_COMPONENT_ENCODE_SET = " \"'<>#&=";
    static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    static final String QUERY_ENCODE_SET = " \"'<>#";
    static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    private final String fragment;
    private final String host;
    private final String password;
    private final List<String> pathSegments;
    private final int port;
    private final List<String> queryNamesAndValues;
    private final String scheme;
    private final String url;
    private final String username;

    /* compiled from: Twttr */
    /* renamed from: com.squareup.okhttp.HttpUrl.1 */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult;

        static {
            $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult = new int[ParseResult.values().length];
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[ParseResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[ParseResult.INVALID_HOST.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[ParseResult.UNSUPPORTED_SCHEME.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[ParseResult.MISSING_SCHEME.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[ParseResult.INVALID_PORT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* compiled from: Twttr */
    public final class Builder {
        String encodedFragment;
        String encodedPassword;
        final List<String> encodedPathSegments;
        List<String> encodedQueryNamesAndValues;
        String encodedUsername;
        String host;
        int port;
        String scheme;

        /* compiled from: Twttr */
        enum ParseResult {
            SUCCESS,
            MISSING_SCHEME,
            UNSUPPORTED_SCHEME,
            INVALID_PORT,
            INVALID_HOST
        }

        public Builder() {
            this.encodedUsername = HttpUrl.FRAGMENT_ENCODE_SET;
            this.encodedPassword = HttpUrl.FRAGMENT_ENCODE_SET;
            this.port = -1;
            this.encodedPathSegments = new ArrayList();
            this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
        }

        public Builder scheme(String str) {
            if (str == null) {
                throw new IllegalArgumentException("scheme == null");
            }
            if (str.equalsIgnoreCase("http")) {
                this.scheme = "http";
            } else if (str.equalsIgnoreCase("https")) {
                this.scheme = "https";
            } else {
                throw new IllegalArgumentException("unexpected scheme: " + str);
            }
            return this;
        }

        public Builder username(String str) {
            if (str == null) {
                throw new IllegalArgumentException("username == null");
            }
            this.encodedUsername = HttpUrl.canonicalize(str, HttpUrl.USERNAME_ENCODE_SET, false, false, true);
            return this;
        }

        public Builder encodedUsername(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedUsername == null");
            }
            this.encodedUsername = HttpUrl.canonicalize(str, HttpUrl.USERNAME_ENCODE_SET, true, false, true);
            return this;
        }

        public Builder password(String str) {
            if (str == null) {
                throw new IllegalArgumentException("password == null");
            }
            this.encodedPassword = HttpUrl.canonicalize(str, HttpUrl.USERNAME_ENCODE_SET, false, false, true);
            return this;
        }

        public Builder encodedPassword(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedPassword == null");
            }
            this.encodedPassword = HttpUrl.canonicalize(str, HttpUrl.USERNAME_ENCODE_SET, true, false, true);
            return this;
        }

        public Builder host(String str) {
            if (str == null) {
                throw new IllegalArgumentException("host == null");
            }
            String canonicalizeHost = canonicalizeHost(str, 0, str.length());
            if (canonicalizeHost == null) {
                throw new IllegalArgumentException("unexpected host: " + str);
            }
            this.host = canonicalizeHost;
            return this;
        }

        public Builder port(int i) {
            if (i <= 0 || i > 65535) {
                throw new IllegalArgumentException("unexpected port: " + i);
            }
            this.port = i;
            return this;
        }

        int effectivePort() {
            return this.port != -1 ? this.port : HttpUrl.defaultPort(this.scheme);
        }

        public Builder addPathSegment(String str) {
            if (str == null) {
                throw new IllegalArgumentException("pathSegment == null");
            }
            push(str, 0, str.length(), false, false);
            return this;
        }

        public Builder addEncodedPathSegment(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedPathSegment == null");
            }
            push(str, 0, str.length(), false, true);
            return this;
        }

        public Builder setPathSegment(int i, String str) {
            if (str == null) {
                throw new IllegalArgumentException("pathSegment == null");
            }
            String canonicalize = HttpUrl.canonicalize(str, 0, str.length(), HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, true);
            if (isDot(canonicalize) || isDotDot(canonicalize)) {
                throw new IllegalArgumentException("unexpected path segment: " + str);
            }
            this.encodedPathSegments.set(i, canonicalize);
            return this;
        }

        public Builder setEncodedPathSegment(int i, String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedPathSegment == null");
            }
            String canonicalize = HttpUrl.canonicalize(str, 0, str.length(), HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, true);
            this.encodedPathSegments.set(i, canonicalize);
            if (!isDot(canonicalize) && !isDotDot(canonicalize)) {
                return this;
            }
            throw new IllegalArgumentException("unexpected path segment: " + str);
        }

        public Builder removePathSegment(int i) {
            this.encodedPathSegments.remove(i);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
            }
            return this;
        }

        public Builder encodedPath(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedPath == null");
            } else if (str.startsWith("/")) {
                resolvePath(str, 0, str.length());
                return this;
            } else {
                throw new IllegalArgumentException("unexpected encodedPath: " + str);
            }
        }

        public Builder query(String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, HttpUrl.QUERY_ENCODE_SET, false, true, true)) : null;
            return this;
        }

        public Builder encodedQuery(String str) {
            this.encodedQueryNamesAndValues = str != null ? HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, HttpUrl.QUERY_ENCODE_SET, true, true, true)) : null;
            return this;
        }

        public Builder addQueryParameter(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, true, true));
            this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, true, true) : null);
            return this;
        }

        public Builder addEncodedQueryParameter(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("encodedName == null");
            }
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            this.encodedQueryNamesAndValues.add(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET, true, true, true));
            this.encodedQueryNamesAndValues.add(str2 != null ? HttpUrl.canonicalize(str2, HttpUrl.QUERY_COMPONENT_ENCODE_SET, true, true, true) : null);
            return this;
        }

        public Builder setQueryParameter(String str, String str2) {
            removeAllQueryParameters(str);
            addQueryParameter(str, str2);
            return this;
        }

        public Builder setEncodedQueryParameter(String str, String str2) {
            removeAllEncodedQueryParameters(str);
            addEncodedQueryParameter(str, str2);
            return this;
        }

        public Builder removeAllQueryParameters(String str) {
            if (str == null) {
                throw new IllegalArgumentException("name == null");
            }
            if (this.encodedQueryNamesAndValues != null) {
                removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, true, true));
            }
            return this;
        }

        public Builder removeAllEncodedQueryParameters(String str) {
            if (str == null) {
                throw new IllegalArgumentException("encodedName == null");
            }
            if (this.encodedQueryNamesAndValues != null) {
                removeAllCanonicalQueryParameters(HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET, true, true, true));
            }
            return this;
        }

        private void removeAllCanonicalQueryParameters(String str) {
            for (int size = this.encodedQueryNamesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equals(this.encodedQueryNamesAndValues.get(size))) {
                    this.encodedQueryNamesAndValues.remove(size + 1);
                    this.encodedQueryNamesAndValues.remove(size);
                    if (this.encodedQueryNamesAndValues.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
            }
        }

        public Builder fragment(String str) {
            this.encodedFragment = str != null ? HttpUrl.canonicalize(str, HttpUrl.FRAGMENT_ENCODE_SET, false, false, false) : null;
            return this;
        }

        public Builder encodedFragment(String str) {
            this.encodedFragment = str != null ? HttpUrl.canonicalize(str, HttpUrl.FRAGMENT_ENCODE_SET, true, false, false) : null;
            return this;
        }

        Builder reencodeForUri() {
            int i;
            int size = this.encodedPathSegments.size();
            for (i = 0; i < size; i++) {
                this.encodedPathSegments.set(i, HttpUrl.canonicalize((String) this.encodedPathSegments.get(i), HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, false, true));
            }
            if (this.encodedQueryNamesAndValues != null) {
                size = this.encodedQueryNamesAndValues.size();
                for (i = 0; i < size; i++) {
                    String str = (String) this.encodedQueryNamesAndValues.get(i);
                    if (str != null) {
                        this.encodedQueryNamesAndValues.set(i, HttpUrl.canonicalize(str, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true));
                    }
                }
            }
            if (this.encodedFragment != null) {
                this.encodedFragment = HttpUrl.canonicalize(this.encodedFragment, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, false, false);
            }
            return this;
        }

        public HttpUrl build() {
            if (this.scheme == null) {
                throw new IllegalStateException("scheme == null");
            } else if (this.host != null) {
                return new HttpUrl();
            } else {
                throw new IllegalStateException("host == null");
            }
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(this.scheme);
            stringBuilder.append("://");
            if (!(this.encodedUsername.isEmpty() && this.encodedPassword.isEmpty())) {
                stringBuilder.append(this.encodedUsername);
                if (!this.encodedPassword.isEmpty()) {
                    stringBuilder.append(':');
                    stringBuilder.append(this.encodedPassword);
                }
                stringBuilder.append('@');
            }
            if (this.host.indexOf(58) != -1) {
                stringBuilder.append('[');
                stringBuilder.append(this.host);
                stringBuilder.append(']');
            } else {
                stringBuilder.append(this.host);
            }
            int effectivePort = effectivePort();
            if (effectivePort != HttpUrl.defaultPort(this.scheme)) {
                stringBuilder.append(':');
                stringBuilder.append(effectivePort);
            }
            HttpUrl.pathSegmentsToString(stringBuilder, this.encodedPathSegments);
            if (this.encodedQueryNamesAndValues != null) {
                stringBuilder.append('?');
                HttpUrl.namesAndValuesToQueryString(stringBuilder, this.encodedQueryNamesAndValues);
            }
            if (this.encodedFragment != null) {
                stringBuilder.append('#');
                stringBuilder.append(this.encodedFragment);
            }
            return stringBuilder.toString();
        }

        ParseResult parse(HttpUrl httpUrl, String str) {
            int portColonOffset;
            int skipLeadingAsciiWhitespace = skipLeadingAsciiWhitespace(str, 0, str.length());
            int skipTrailingAsciiWhitespace = skipTrailingAsciiWhitespace(str, skipLeadingAsciiWhitespace, str.length());
            if (schemeDelimiterOffset(str, skipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace) != -1) {
                if (str.regionMatches(true, skipLeadingAsciiWhitespace, "https:", 0, 6)) {
                    this.scheme = "https";
                    skipLeadingAsciiWhitespace += "https:".length();
                } else {
                    if (!str.regionMatches(true, skipLeadingAsciiWhitespace, "http:", 0, 5)) {
                        return ParseResult.UNSUPPORTED_SCHEME;
                    }
                    this.scheme = "http";
                    skipLeadingAsciiWhitespace += "http:".length();
                }
            } else if (httpUrl == null) {
                return ParseResult.MISSING_SCHEME;
            } else {
                this.scheme = httpUrl.scheme;
            }
            int slashCount = slashCount(str, skipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace);
            if (slashCount >= 2 || httpUrl == null || !httpUrl.scheme.equals(this.scheme)) {
                Object obj = null;
                Object obj2 = null;
                int i = skipLeadingAsciiWhitespace + slashCount;
                while (true) {
                    Object obj3;
                    Object obj4;
                    int access$200 = HttpUrl.delimiterOffset(str, i, skipTrailingAsciiWhitespace, "@/\\?#");
                    switch (access$200 != skipTrailingAsciiWhitespace ? str.charAt(access$200) : '\uffff') {
                        case TtmlStyle.UNSPECIFIED /*-1*/:
                        case bdd.AppCompatTheme_actionModeSelectAllDrawable /*35*/:
                        case bdd.AppCompatTheme_spinnerDropDownItemStyle /*47*/:
                        case bdd.AppCompatTheme_editTextBackground /*63*/:
                        case bdd.AppCompatTheme_alertDialogButtonGroupStyle /*92*/:
                            portColonOffset = portColonOffset(str, i, access$200);
                            if (portColonOffset + 1 < access$200) {
                                this.host = canonicalizeHost(str, i, portColonOffset);
                                this.port = parsePort(str, portColonOffset + 1, access$200);
                                if (this.port == -1) {
                                    return ParseResult.INVALID_PORT;
                                }
                            }
                            this.host = canonicalizeHost(str, i, portColonOffset);
                            this.port = HttpUrl.defaultPort(this.scheme);
                            if (this.host != null) {
                                skipLeadingAsciiWhitespace = access$200;
                                break;
                            }
                            return ParseResult.INVALID_HOST;
                        case bdd.AppCompatTheme_imageButtonStyle /*64*/:
                            if (obj == null) {
                                skipLeadingAsciiWhitespace = HttpUrl.delimiterOffset(str, i, access$200, ":");
                                String canonicalize = HttpUrl.canonicalize(str, i, skipLeadingAsciiWhitespace, HttpUrl.USERNAME_ENCODE_SET, true, false, true);
                                if (obj2 != null) {
                                    canonicalize = this.encodedUsername + "%40" + canonicalize;
                                }
                                this.encodedUsername = canonicalize;
                                if (skipLeadingAsciiWhitespace != access$200) {
                                    obj = 1;
                                    this.encodedPassword = HttpUrl.canonicalize(str, skipLeadingAsciiWhitespace + 1, access$200, HttpUrl.USERNAME_ENCODE_SET, true, false, true);
                                }
                                obj2 = 1;
                            } else {
                                this.encodedPassword += "%40" + HttpUrl.canonicalize(str, i, access$200, HttpUrl.USERNAME_ENCODE_SET, true, false, true);
                            }
                            skipLeadingAsciiWhitespace = access$200 + 1;
                            obj3 = obj;
                            obj4 = obj2;
                            continue;
                        default:
                            obj3 = obj;
                            skipLeadingAsciiWhitespace = i;
                            obj4 = obj2;
                            continue;
                    }
                    obj = obj3;
                    obj2 = obj4;
                    i = skipLeadingAsciiWhitespace;
                }
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host;
                this.port = httpUrl.port;
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (skipLeadingAsciiWhitespace == skipTrailingAsciiWhitespace || str.charAt(skipLeadingAsciiWhitespace) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
            }
            portColonOffset = HttpUrl.delimiterOffset(str, skipLeadingAsciiWhitespace, skipTrailingAsciiWhitespace, "?#");
            resolvePath(str, skipLeadingAsciiWhitespace, portColonOffset);
            if (portColonOffset >= skipTrailingAsciiWhitespace || str.charAt(portColonOffset) != '?') {
                skipLeadingAsciiWhitespace = portColonOffset;
            } else {
                skipLeadingAsciiWhitespace = HttpUrl.delimiterOffset(str, portColonOffset, skipTrailingAsciiWhitespace, "#");
                this.encodedQueryNamesAndValues = HttpUrl.queryStringToNamesAndValues(HttpUrl.canonicalize(str, portColonOffset + 1, skipLeadingAsciiWhitespace, HttpUrl.QUERY_ENCODE_SET, true, true, true));
            }
            if (skipLeadingAsciiWhitespace < skipTrailingAsciiWhitespace && str.charAt(skipLeadingAsciiWhitespace) == '#') {
                this.encodedFragment = HttpUrl.canonicalize(str, skipLeadingAsciiWhitespace + 1, skipTrailingAsciiWhitespace, HttpUrl.FRAGMENT_ENCODE_SET, true, false, false);
            }
            return ParseResult.SUCCESS;
        }

        private void resolvePath(String str, int i, int i2) {
            if (i != i2) {
                char charAt = str.charAt(i);
                if (charAt == '/' || charAt == '\\') {
                    this.encodedPathSegments.clear();
                    this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
                    i++;
                } else {
                    this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, HttpUrl.FRAGMENT_ENCODE_SET);
                }
                int i3 = i;
                while (i3 < i2) {
                    int access$200 = HttpUrl.delimiterOffset(str, i3, i2, "/\\");
                    boolean z = access$200 < i2;
                    push(str, i3, access$200, z, true);
                    if (z) {
                        access$200++;
                    }
                    i3 = access$200;
                }
            }
        }

        private void push(String str, int i, int i2, boolean z, boolean z2) {
            String canonicalize = HttpUrl.canonicalize(str, i, i2, HttpUrl.PATH_SEGMENT_ENCODE_SET, z2, false, true);
            if (!isDot(canonicalize)) {
                if (isDotDot(canonicalize)) {
                    pop();
                    return;
                }
                if (((String) this.encodedPathSegments.get(this.encodedPathSegments.size() - 1)).isEmpty()) {
                    this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, canonicalize);
                } else {
                    this.encodedPathSegments.add(canonicalize);
                }
                if (z) {
                    this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
                }
            }
        }

        private boolean isDot(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean isDotDot(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private void pop() {
            if (!((String) this.encodedPathSegments.remove(this.encodedPathSegments.size() - 1)).isEmpty() || this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add(HttpUrl.FRAGMENT_ENCODE_SET);
            } else {
                this.encodedPathSegments.set(this.encodedPathSegments.size() - 1, HttpUrl.FRAGMENT_ENCODE_SET);
            }
        }

        private int skipLeadingAsciiWhitespace(String str, int i, int i2) {
            int i3 = i;
            while (i3 < i2) {
                switch (str.charAt(i3)) {
                    case b.ShimmerFrameLayout_fixed_height /*9*/:
                    case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    case Atom.FULL_HEADER_SIZE /*12*/:
                    case b.ShimmerFrameLayout_shape /*13*/:
                    case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                        i3++;
                    default:
                        return i3;
                }
            }
            return i2;
        }

        private int skipTrailingAsciiWhitespace(String str, int i, int i2) {
            int i3 = i2 - 1;
            while (i3 >= i) {
                switch (str.charAt(i3)) {
                    case b.ShimmerFrameLayout_fixed_height /*9*/:
                    case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    case Atom.FULL_HEADER_SIZE /*12*/:
                    case b.ShimmerFrameLayout_shape /*13*/:
                    case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                        i3--;
                    default:
                        return i3 + 1;
                }
            }
            return i;
        }

        private static int schemeDelimiterOffset(String str, int i, int i2) {
            if (i2 - i < 2) {
                return -1;
            }
            char charAt = str.charAt(i);
            if ((charAt < 'a' || charAt > 'z') && (charAt < 'A' || charAt > 'Z')) {
                return -1;
            }
            int i3 = i + 1;
            while (i3 < i2) {
                char charAt2 = str.charAt(i3);
                if ((charAt2 >= 'a' && charAt2 <= 'z') || ((charAt2 >= 'A' && charAt2 <= 'Z') || ((charAt2 >= '0' && charAt2 <= '9') || charAt2 == '+' || charAt2 == '-' || charAt2 == '.'))) {
                    i3++;
                } else if (charAt2 == ':') {
                    return i3;
                } else {
                    return -1;
                }
            }
            return -1;
        }

        private static int slashCount(String str, int i, int i2) {
            int i3 = 0;
            while (i < i2) {
                char charAt = str.charAt(i);
                if (charAt != '\\' && charAt != '/') {
                    break;
                }
                i3++;
                i++;
            }
            return i3;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static int portColonOffset(java.lang.String r3, int r4, int r5) {
            /*
            r0 = r4;
        L_0x0001:
            if (r0 >= r5) goto L_0x001a;
        L_0x0003:
            r1 = r3.charAt(r0);
            switch(r1) {
                case 58: goto L_0x001b;
                case 91: goto L_0x000d;
                default: goto L_0x000a;
            };
        L_0x000a:
            r0 = r0 + 1;
            goto L_0x0001;
        L_0x000d:
            r0 = r0 + 1;
            if (r0 >= r5) goto L_0x000a;
        L_0x0011:
            r1 = r3.charAt(r0);
            r2 = 93;
            if (r1 != r2) goto L_0x000d;
        L_0x0019:
            goto L_0x000a;
        L_0x001a:
            r0 = r5;
        L_0x001b:
            return r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.HttpUrl.Builder.portColonOffset(java.lang.String, int, int):int");
        }

        private static String canonicalizeHost(String str, int i, int i2) {
            String percentDecode = HttpUrl.percentDecode(str, i, i2, false);
            if (!percentDecode.startsWith("[") || !percentDecode.endsWith("]")) {
                return domainToAscii(percentDecode);
            }
            InetAddress decodeIpv6 = decodeIpv6(percentDecode, 1, percentDecode.length() - 1);
            if (decodeIpv6 == null) {
                return null;
            }
            byte[] address = decodeIpv6.getAddress();
            if (address.length == 16) {
                return inet6AddressToAscii(address);
            }
            throw new AssertionError();
        }

        private static InetAddress decodeIpv6(String str, int i, int i2) {
            Object obj = new byte[16];
            int i3 = i;
            int i4 = -1;
            int i5 = -1;
            int i6 = 0;
            while (i3 < i2) {
                if (i6 == obj.length) {
                    return null;
                }
                int decodeHexDigit;
                if (i3 + 2 > i2 || !str.regionMatches(i3, "::", 0, 2)) {
                    if (i6 != 0) {
                        if (str.regionMatches(i3, ":", 0, 1)) {
                            i3++;
                        } else if (!str.regionMatches(i3, ".", 0, 1)) {
                            return null;
                        } else {
                            if (!decodeIpv4Suffix(str, i4, i2, obj, i6 - 2)) {
                                return null;
                            }
                            i6 += 2;
                        }
                    }
                } else if (i5 != -1) {
                    return null;
                } else {
                    i3 += 2;
                    i5 = i6 + 2;
                    if (i3 == i2) {
                        i6 = i5;
                        break;
                    }
                    i6 = i5;
                }
                i4 = 0;
                int i7 = i3;
                while (i7 < i2) {
                    decodeHexDigit = HttpUrl.decodeHexDigit(str.charAt(i7));
                    if (decodeHexDigit == -1) {
                        break;
                    }
                    i4 = (i4 << 4) + decodeHexDigit;
                    i7++;
                }
                decodeHexDigit = i7 - i3;
                if (decodeHexDigit == 0 || decodeHexDigit > 4) {
                    return null;
                }
                decodeHexDigit = i6 + 1;
                obj[i6] = (byte) ((i4 >>> 8) & NalUnitUtil.EXTENDED_SAR);
                i6 = decodeHexDigit + 1;
                obj[decodeHexDigit] = (byte) (i4 & NalUnitUtil.EXTENDED_SAR);
                i4 = i3;
                i3 = i7;
            }
            if (i6 != obj.length) {
                if (i5 == -1) {
                    return null;
                }
                System.arraycopy(obj, i5, obj, obj.length - (i6 - i5), i6 - i5);
                Arrays.fill(obj, i5, (obj.length - i6) + i5, (byte) 0);
            }
            try {
                return InetAddress.getByAddress(obj);
            } catch (UnknownHostException e) {
                throw new AssertionError();
            }
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private static boolean decodeIpv4Suffix(java.lang.String r7, int r8, int r9, byte[] r10, int r11) {
            /*
            r1 = 0;
            r0 = r8;
            r4 = r11;
        L_0x0003:
            if (r0 >= r9) goto L_0x004a;
        L_0x0005:
            r2 = r10.length;
            if (r4 != r2) goto L_0x000a;
        L_0x0008:
            r0 = r1;
        L_0x0009:
            return r0;
        L_0x000a:
            if (r4 == r11) goto L_0x0018;
        L_0x000c:
            r2 = r7.charAt(r0);
            r3 = 46;
            if (r2 == r3) goto L_0x0016;
        L_0x0014:
            r0 = r1;
            goto L_0x0009;
        L_0x0016:
            r0 = r0 + 1;
        L_0x0018:
            r2 = r1;
            r3 = r0;
        L_0x001a:
            if (r3 >= r9) goto L_0x0028;
        L_0x001c:
            r5 = r7.charAt(r3);
            r6 = 48;
            if (r5 < r6) goto L_0x0028;
        L_0x0024:
            r6 = 57;
            if (r5 <= r6) goto L_0x002e;
        L_0x0028:
            r0 = r3 - r0;
            if (r0 != 0) goto L_0x0042;
        L_0x002c:
            r0 = r1;
            goto L_0x0009;
        L_0x002e:
            if (r2 != 0) goto L_0x0034;
        L_0x0030:
            if (r0 == r3) goto L_0x0034;
        L_0x0032:
            r0 = r1;
            goto L_0x0009;
        L_0x0034:
            r2 = r2 * 10;
            r2 = r2 + r5;
            r2 = r2 + -48;
            r5 = 255; // 0xff float:3.57E-43 double:1.26E-321;
            if (r2 <= r5) goto L_0x003f;
        L_0x003d:
            r0 = r1;
            goto L_0x0009;
        L_0x003f:
            r3 = r3 + 1;
            goto L_0x001a;
        L_0x0042:
            r0 = r4 + 1;
            r2 = (byte) r2;
            r10[r4] = r2;
            r4 = r0;
            r0 = r3;
            goto L_0x0003;
        L_0x004a:
            r0 = r11 + 4;
            if (r4 == r0) goto L_0x0050;
        L_0x004e:
            r0 = r1;
            goto L_0x0009;
        L_0x0050:
            r0 = 1;
            goto L_0x0009;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.HttpUrl.Builder.decodeIpv4Suffix(java.lang.String, int, int, byte[], int):boolean");
        }

        private static String domainToAscii(String str) {
            try {
                String toLowerCase = IDN.toASCII(str).toLowerCase(Locale.US);
                if (toLowerCase.isEmpty() || containsInvalidHostnameAsciiCodes(toLowerCase)) {
                    return null;
                }
                return toLowerCase;
            } catch (IllegalArgumentException e) {
                return null;
            }
        }

        private static boolean containsInvalidHostnameAsciiCodes(String str) {
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (charAt <= '\u001f' || charAt >= '\u007f') {
                    return true;
                }
                if (" #%/:?@[\\]".indexOf(charAt) != -1) {
                    return true;
                }
            }
            return false;
        }

        private static String inet6AddressToAscii(byte[] bArr) {
            int i = 0;
            int i2 = 0;
            int i3 = -1;
            int i4 = 0;
            while (i4 < bArr.length) {
                int i5 = i4;
                while (i5 < 16 && bArr[i5] == null && bArr[i5 + 1] == null) {
                    i5 += 2;
                }
                int i6 = i5 - i4;
                if (i6 > i2) {
                    i2 = i6;
                    i3 = i4;
                }
                i4 = i5 + 2;
            }
            f fVar = new f();
            while (i < bArr.length) {
                if (i == i3) {
                    fVar.b(58);
                    i += i2;
                    if (i == 16) {
                        fVar.b(58);
                    }
                } else {
                    if (i > 0) {
                        fVar.b(58);
                    }
                    fVar.j((long) (((bArr[i] & NalUnitUtil.EXTENDED_SAR) << 8) | (bArr[i + 1] & NalUnitUtil.EXTENDED_SAR)));
                    i += 2;
                }
            }
            return fVar.r();
        }

        private static int parsePort(String str, int i, int i2) {
            try {
                int parseInt = Integer.parseInt(HttpUrl.canonicalize(str, i, i2, HttpUrl.FRAGMENT_ENCODE_SET, false, false, true));
                return (parseInt <= 0 || parseInt > 65535) ? -1 : parseInt;
            } catch (NumberFormatException e) {
                return -1;
            }
        }
    }

    static {
        HEX_DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    private HttpUrl(Builder builder) {
        String str = null;
        this.scheme = builder.scheme;
        this.username = percentDecode(builder.encodedUsername, false);
        this.password = percentDecode(builder.encodedPassword, false);
        this.host = builder.host;
        this.port = builder.effectivePort();
        this.pathSegments = percentDecode(builder.encodedPathSegments, false);
        this.queryNamesAndValues = builder.encodedQueryNamesAndValues != null ? percentDecode(builder.encodedQueryNamesAndValues, true) : null;
        if (builder.encodedFragment != null) {
            str = percentDecode(builder.encodedFragment, false);
        }
        this.fragment = str;
        this.url = builder.toString();
    }

    public URL url() {
        try {
            return new URL(this.url);
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    public URI uri() {
        try {
            return new URI(newBuilder().reencodeForUri().toString());
        } catch (URISyntaxException e) {
            throw new IllegalStateException("not valid as a java.net.URI: " + this.url);
        }
    }

    public String scheme() {
        return this.scheme;
    }

    public boolean isHttps() {
        return this.scheme.equals("https");
    }

    public String encodedUsername() {
        if (this.username.isEmpty()) {
            return FRAGMENT_ENCODE_SET;
        }
        int length = this.scheme.length() + 3;
        return this.url.substring(length, delimiterOffset(this.url, length, this.url.length(), ":@"));
    }

    public String username() {
        return this.username;
    }

    public String encodedPassword() {
        if (this.password.isEmpty()) {
            return FRAGMENT_ENCODE_SET;
        }
        return this.url.substring(this.url.indexOf(58, this.scheme.length() + 3) + 1, this.url.indexOf(64));
    }

    public String password() {
        return this.password;
    }

    public String host() {
        return this.host;
    }

    public int port() {
        return this.port;
    }

    public static int defaultPort(String str) {
        if (str.equals("http")) {
            return 80;
        }
        if (str.equals("https")) {
            return 443;
        }
        return -1;
    }

    public int pathSize() {
        return this.pathSegments.size();
    }

    public String encodedPath() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        return this.url.substring(indexOf, delimiterOffset(this.url, indexOf, this.url.length(), "?#"));
    }

    static void pathSegmentsToString(StringBuilder stringBuilder, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            stringBuilder.append('/');
            stringBuilder.append((String) list.get(i));
        }
    }

    public List<String> encodedPathSegments() {
        int indexOf = this.url.indexOf(47, this.scheme.length() + 3);
        int delimiterOffset = delimiterOffset(this.url, indexOf, this.url.length(), "?#");
        List<String> arrayList = new ArrayList();
        while (indexOf < delimiterOffset) {
            int i = indexOf + 1;
            indexOf = delimiterOffset(this.url, i, delimiterOffset, "/");
            arrayList.add(this.url.substring(i, indexOf));
        }
        return arrayList;
    }

    public List<String> pathSegments() {
        return this.pathSegments;
    }

    public String encodedQuery() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int indexOf = this.url.indexOf(63) + 1;
        return this.url.substring(indexOf, delimiterOffset(this.url, indexOf + 1, this.url.length(), "#"));
    }

    static void namesAndValuesToQueryString(StringBuilder stringBuilder, List<String> list) {
        int size = list.size();
        for (int i = 0; i < size; i += 2) {
            String str = (String) list.get(i);
            String str2 = (String) list.get(i + 1);
            if (i > 0) {
                stringBuilder.append('&');
            }
            stringBuilder.append(str);
            if (str2 != null) {
                stringBuilder.append('=');
                stringBuilder.append(str2);
            }
        }
    }

    static List<String> queryStringToNamesAndValues(String str) {
        List<String> arrayList = new ArrayList();
        int i = 0;
        while (i <= str.length()) {
            int indexOf = str.indexOf(38, i);
            if (indexOf == -1) {
                indexOf = str.length();
            }
            int indexOf2 = str.indexOf(61, i);
            if (indexOf2 == -1 || indexOf2 > indexOf) {
                arrayList.add(str.substring(i, indexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i, indexOf2));
                arrayList.add(str.substring(indexOf2 + 1, indexOf));
            }
            i = indexOf + 1;
        }
        return arrayList;
    }

    public String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder stringBuilder = new StringBuilder();
        namesAndValuesToQueryString(stringBuilder, this.queryNamesAndValues);
        return stringBuilder.toString();
    }

    public int querySize() {
        return this.queryNamesAndValues != null ? this.queryNamesAndValues.size() / 2 : 0;
    }

    public String queryParameter(String str) {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.queryNamesAndValues.get(i))) {
                return (String) this.queryNamesAndValues.get(i + 1);
            }
        }
        return null;
    }

    public Set<String> queryParameterNames() {
        if (this.queryNamesAndValues == null) {
            return Collections.emptySet();
        }
        Set linkedHashSet = new LinkedHashSet();
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            linkedHashSet.add(this.queryNamesAndValues.get(i));
        }
        return Collections.unmodifiableSet(linkedHashSet);
    }

    public List<String> queryParameterValues(String str) {
        if (this.queryNamesAndValues == null) {
            return Collections.emptyList();
        }
        List arrayList = new ArrayList();
        int size = this.queryNamesAndValues.size();
        for (int i = 0; i < size; i += 2) {
            if (str.equals(this.queryNamesAndValues.get(i))) {
                arrayList.add(this.queryNamesAndValues.get(i + 1));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String queryParameterName(int i) {
        return (String) this.queryNamesAndValues.get(i * 2);
    }

    public String queryParameterValue(int i) {
        return (String) this.queryNamesAndValues.get((i * 2) + 1);
    }

    public String encodedFragment() {
        if (this.fragment == null) {
            return null;
        }
        return this.url.substring(this.url.indexOf(35) + 1);
    }

    public String fragment() {
        return this.fragment;
    }

    public HttpUrl resolve(String str) {
        Builder builder = new Builder();
        return builder.parse(this, str) == ParseResult.SUCCESS ? builder.build() : null;
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.scheme = this.scheme;
        builder.encodedUsername = encodedUsername();
        builder.encodedPassword = encodedPassword();
        builder.host = this.host;
        builder.port = this.port != defaultPort(this.scheme) ? this.port : -1;
        builder.encodedPathSegments.clear();
        builder.encodedPathSegments.addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.encodedFragment = encodedFragment();
        return builder;
    }

    public static HttpUrl parse(String str) {
        Builder builder = new Builder();
        if (builder.parse(null, str) == ParseResult.SUCCESS) {
            return builder.build();
        }
        return null;
    }

    public static HttpUrl get(URL url) {
        return parse(url.toString());
    }

    static HttpUrl getChecked(String str) throws MalformedURLException, UnknownHostException {
        Builder builder = new Builder();
        ParseResult parse = builder.parse(null, str);
        switch (AnonymousClass1.$SwitchMap$com$squareup$okhttp$HttpUrl$Builder$ParseResult[parse.ordinal()]) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                return builder.build();
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                throw new UnknownHostException("Invalid host: " + str);
            default:
                throw new MalformedURLException("Invalid URL: " + parse + " for " + str);
        }
    }

    public static HttpUrl get(URI uri) {
        return parse(uri.toString());
    }

    public boolean equals(Object obj) {
        return (obj instanceof HttpUrl) && ((HttpUrl) obj).url.equals(this.url);
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    public String toString() {
        return this.url;
    }

    private static int delimiterOffset(String str, int i, int i2, String str2) {
        for (int i3 = i; i3 < i2; i3++) {
            if (str2.indexOf(str.charAt(i3)) != -1) {
                return i3;
            }
        }
        return i2;
    }

    static String percentDecode(String str, boolean z) {
        return percentDecode(str, 0, str.length(), z);
    }

    private List<String> percentDecode(List<String> list, boolean z) {
        List arrayList = new ArrayList(list.size());
        for (String str : list) {
            arrayList.add(str != null ? percentDecode(str, z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    static String percentDecode(String str, int i, int i2, boolean z) {
        for (int i3 = i; i3 < i2; i3++) {
            char charAt = str.charAt(i3);
            if (charAt == '%' || (charAt == '+' && z)) {
                f fVar = new f();
                fVar.a(str, i, i3);
                percentDecode(fVar, str, i3, i2, z);
                return fVar.r();
            }
        }
        return str.substring(i, i2);
    }

    static void percentDecode(f fVar, String str, int i, int i2, boolean z) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt != 37 || i3 + 2 >= i2) {
                if (codePointAt == 43 && z) {
                    fVar.b(32);
                }
                fVar.a(codePointAt);
            } else {
                int decodeHexDigit = decodeHexDigit(str.charAt(i3 + 1));
                int decodeHexDigit2 = decodeHexDigit(str.charAt(i3 + 2));
                if (!(decodeHexDigit == -1 || decodeHexDigit2 == -1)) {
                    fVar.b((decodeHexDigit << 4) + decodeHexDigit2);
                    i3 += 2;
                }
                fVar.a(codePointAt);
            }
            i3 += Character.charCount(codePointAt);
        }
    }

    static int decodeHexDigit(char c) {
        if (c >= '0' && c <= '9') {
            return c - 48;
        }
        if (c >= 'a' && c <= 'f') {
            return (c - 97) + 10;
        }
        if (c < 'A' || c > 'F') {
            return -1;
        }
        return (c - 65) + 10;
    }

    static String canonicalize(String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3) {
        int i3 = i;
        while (i3 < i2) {
            int codePointAt = str.codePointAt(i3);
            if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z3) || str2.indexOf(codePointAt) != -1 || ((codePointAt == 37 && !z) || (codePointAt == 43 && z2)))) {
                f fVar = new f();
                fVar.a(str, i, i3);
                canonicalize(fVar, str, i3, i2, str2, z, z2, z3);
                return fVar.r();
            }
            i3 += Character.charCount(codePointAt);
        }
        return str.substring(i, i2);
    }

    static void canonicalize(f fVar, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3) {
        f fVar2 = null;
        while (i < i2) {
            int codePointAt = str.codePointAt(i);
            if (!(z && (codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13))) {
                if (codePointAt == 43 && z2) {
                    fVar.a(z ? "+" : "%2B");
                } else if (codePointAt < 32 || codePointAt == 127 || ((codePointAt >= 128 && z3) || str2.indexOf(codePointAt) != -1 || (codePointAt == 37 && !z))) {
                    if (fVar2 == null) {
                        fVar2 = new f();
                    }
                    fVar2.a(codePointAt);
                    while (!fVar2.f()) {
                        int i3 = fVar2.i() & NalUnitUtil.EXTENDED_SAR;
                        fVar.b(37);
                        fVar.b(HEX_DIGITS[(i3 >> 4) & 15]);
                        fVar.b(HEX_DIGITS[i3 & 15]);
                    }
                } else {
                    fVar.a(codePointAt);
                }
            }
            i += Character.charCount(codePointAt);
        }
    }

    static String canonicalize(String str, String str2, boolean z, boolean z2, boolean z3) {
        return canonicalize(str, 0, str.length(), str2, z, z2, z3);
    }
}
