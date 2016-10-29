package com.squareup.okhttp.v_1_5_1.internal.http;

import java.io.IOException;
import java.net.ProtocolException;

/* compiled from: Twttr */
public final class StatusLine {
    public static final int HTTP_CONTINUE = 100;
    public static final int HTTP_TEMP_REDIRECT = 307;
    private final int httpMinorVersion;
    private final int responseCode;
    private final String responseMessage;
    private final String statusLine;

    public StatusLine(String str) throws IOException {
        int charAt;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            charAt = str.charAt(7) - 48;
            if (charAt < 0 || charAt > 9) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            charAt = 0;
            i = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        if (str.length() < i + 3) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            String str2;
            int parseInt = Integer.parseInt(str.substring(i, i + 3));
            String str3 = TtmlNode.ANONYMOUS_REGION_ID;
            if (str.length() <= i + 3) {
                str2 = str3;
            } else if (str.charAt(i + 3) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            } else {
                str2 = str.substring(i + 4);
            }
            this.responseMessage = str2;
            this.responseCode = parseInt;
            this.statusLine = str;
            this.httpMinorVersion = charAt;
        } catch (NumberFormatException e) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String getStatusLine() {
        return this.statusLine;
    }

    public int httpMinorVersion() {
        return this.httpMinorVersion != -1 ? this.httpMinorVersion : 1;
    }

    public int code() {
        return this.responseCode;
    }

    public String message() {
        return this.responseMessage;
    }
}
