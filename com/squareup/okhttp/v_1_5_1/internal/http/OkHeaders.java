package com.squareup.okhttp.v_1_5_1.internal.http;

import com.squareup.okhttp.v_1_5_1.internal.Platform;
import com.squareup.okhttp.v_1_5_1.internal.http.Request.Builder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.TreeMap;

/* compiled from: Twttr */
public final class OkHeaders {
    private static final Comparator<String> FIELD_NAME_COMPARATOR;
    static final String PREFIX;
    public static final String RECEIVED_MILLIS;
    public static final String RESPONSE_SOURCE;
    public static final String SELECTED_PROTOCOL;
    public static final String SENT_MILLIS;

    static {
        FIELD_NAME_COMPARATOR = new Comparator<String>() {
            public int compare(String str, String str2) {
                if (str == str2) {
                    return 0;
                }
                if (str == null) {
                    return -1;
                }
                if (str2 == null) {
                    return 1;
                }
                return String.CASE_INSENSITIVE_ORDER.compare(str, str2);
            }
        };
        PREFIX = Platform.get().getPrefix();
        SENT_MILLIS = PREFIX + "-Sent-Millis";
        RECEIVED_MILLIS = PREFIX + "-Received-Millis";
        RESPONSE_SOURCE = PREFIX + "-Response-Source";
        SELECTED_PROTOCOL = PREFIX + "-Selected-Protocol";
    }

    private OkHeaders() {
    }

    public static long contentLength(Request request) {
        return contentLength(request.headers());
    }

    public static long contentLength(Response response) {
        return contentLength(response.headers());
    }

    public static long contentLength(Headers headers) {
        return stringToLong(headers.get("Content-Length"));
    }

    private static long stringToLong(String str) {
        long j = -1;
        if (str != null) {
            try {
                j = Long.parseLong(str);
            } catch (NumberFormatException e) {
            }
        }
        return j;
    }

    public static Map<String, List<String>> toMultimap(Headers headers, String str) {
        Map treeMap = new TreeMap(FIELD_NAME_COMPARATOR);
        for (int i = 0; i < headers.size(); i++) {
            String name = headers.name(i);
            String value = headers.value(i);
            List arrayList = new ArrayList();
            List list = (List) treeMap.get(name);
            if (list != null) {
                arrayList.addAll(list);
            }
            arrayList.add(value);
            treeMap.put(name, Collections.unmodifiableList(arrayList));
        }
        if (str != null) {
            treeMap.put(null, Collections.unmodifiableList(Collections.singletonList(str)));
        }
        return Collections.unmodifiableMap(treeMap);
    }

    public static void addCookies(Builder builder, Map<String, List<String>> map) {
        for (Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            if (("Cookie".equalsIgnoreCase(str) || "Cookie2".equalsIgnoreCase(str)) && !((List) entry.getValue()).isEmpty()) {
                builder.addHeader(str, buildCookieHeader((List) entry.getValue()));
            }
        }
    }

    private static String buildCookieHeader(List<String> list) {
        if (list.size() == 1) {
            return (String) list.get(0);
        }
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) {
                stringBuilder.append("; ");
            }
            stringBuilder.append((String) list.get(i));
        }
        return stringBuilder.toString();
    }
}
