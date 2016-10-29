package com.squareup.okhttp.v_1_5_1.internal.http;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

/* compiled from: Twttr */
public final class Headers {
    private final String[] namesAndValues;

    /* compiled from: Twttr */
    public class Builder {
        private final List<String> namesAndValues;

        public Builder() {
            this.namesAndValues = new ArrayList(20);
        }

        public Builder addLine(String str) {
            int indexOf = str.indexOf(":", 1);
            if (indexOf != -1) {
                return addLenient(str.substring(0, indexOf), str.substring(indexOf + 1));
            }
            if (str.startsWith(":")) {
                return addLenient(TtmlNode.ANONYMOUS_REGION_ID, str.substring(1));
            }
            return addLenient(TtmlNode.ANONYMOUS_REGION_ID, str);
        }

        public Builder add(String str, String str2) {
            if (str == null) {
                throw new IllegalArgumentException("fieldname == null");
            } else if (str2 == null) {
                throw new IllegalArgumentException("value == null");
            } else if (str.length() != 0 && str.indexOf(0) == -1 && str2.indexOf(0) == -1) {
                return addLenient(str, str2);
            } else {
                throw new IllegalArgumentException("Unexpected header: " + str + ": " + str2);
            }
        }

        private Builder addLenient(String str, String str2) {
            this.namesAndValues.add(str);
            this.namesAndValues.add(str2.trim());
            return this;
        }

        public Builder removeAll(String str) {
            for (int i = 0; i < this.namesAndValues.size(); i += 2) {
                if (str.equalsIgnoreCase((String) this.namesAndValues.get(i))) {
                    this.namesAndValues.remove(i);
                    this.namesAndValues.remove(i);
                }
            }
            return this;
        }

        public Builder set(String str, String str2) {
            removeAll(str);
            add(str, str2);
            return this;
        }

        public String get(String str) {
            for (int size = this.namesAndValues.size() - 2; size >= 0; size -= 2) {
                if (str.equalsIgnoreCase((String) this.namesAndValues.get(size))) {
                    return (String) this.namesAndValues.get(size + 1);
                }
            }
            return null;
        }

        public Headers build() {
            return new Headers();
        }
    }

    private Headers(Builder builder) {
        this.namesAndValues = (String[]) builder.namesAndValues.toArray(new String[builder.namesAndValues.size()]);
    }

    public String get(String str) {
        return get(this.namesAndValues, str);
    }

    public int size() {
        return this.namesAndValues.length / 2;
    }

    public String name(int i) {
        int i2 = i * 2;
        if (i2 < 0 || i2 >= this.namesAndValues.length) {
            return null;
        }
        return this.namesAndValues[i2];
    }

    public String value(int i) {
        int i2 = (i * 2) + 1;
        if (i2 < 0 || i2 >= this.namesAndValues.length) {
            return null;
        }
        return this.namesAndValues[i2];
    }

    public Set<String> names() {
        Set treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        for (int i = 0; i < size(); i++) {
            treeSet.add(name(i));
        }
        return Collections.unmodifiableSet(treeSet);
    }

    public List<String> values(String str) {
        List list = null;
        for (int i = 0; i < size(); i++) {
            if (str.equalsIgnoreCase(name(i))) {
                if (list == null) {
                    list = new ArrayList(2);
                }
                list.add(value(i));
            }
        }
        return list != null ? Collections.unmodifiableList(list) : Collections.emptyList();
    }

    public Headers getAll(Set<String> set) {
        Builder builder = new Builder();
        for (int i = 0; i < this.namesAndValues.length; i += 2) {
            String str = this.namesAndValues[i];
            if (set.contains(str)) {
                builder.add(str, this.namesAndValues[i + 1]);
            }
        }
        return builder.build();
    }

    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.namesAndValues.addAll(Arrays.asList(this.namesAndValues));
        return builder;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        for (int i = 0; i < size(); i++) {
            stringBuilder.append(name(i)).append(": ").append(value(i)).append("\n");
        }
        return stringBuilder.toString();
    }

    private static String get(String[] strArr, String str) {
        for (int length = strArr.length - 2; length >= 0; length -= 2) {
            if (str.equalsIgnoreCase(strArr[length])) {
                return strArr[length + 1];
            }
        }
        return null;
    }
}
