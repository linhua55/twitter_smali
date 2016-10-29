package com.twitter.library.vineloops;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.core.d;
import com.fasterxml.jackson.core.io.SerializedString;
import com.twitter.library.api.t;
import java.io.IOException;

/* compiled from: Twttr */
public class f extends t<Integer, String> {
    protected /* synthetic */ Object a(JsonParser jsonParser) throws IOException {
        return b(jsonParser);
    }

    protected /* synthetic */ Object a(JsonParser jsonParser, int i) throws IOException {
        return b(jsonParser, i);
    }

    protected String b(JsonParser jsonParser, int i) throws IOException {
        String str = null;
        try {
            if (jsonParser.a() == JsonToken.START_OBJECT) {
                while (jsonParser.a() != JsonToken.END_OBJECT) {
                    String e = jsonParser.e();
                    jsonParser.a();
                    if (e.equals("error")) {
                        str = jsonParser.s();
                        break;
                    }
                }
            }
        } catch (IOException e2) {
        }
        return str;
    }

    protected Integer b(JsonParser jsonParser) throws IOException {
        Integer num = null;
        try {
            if (jsonParser.d() == JsonToken.START_OBJECT) {
                d serializedString = new SerializedString("data");
                while (!jsonParser.a(serializedString)) {
                    if (jsonParser.d() == JsonToken.END_OBJECT) {
                        break;
                    }
                }
                serializedString = new SerializedString("nextAfter");
                while (!jsonParser.a(serializedString)) {
                    if (jsonParser.d() == JsonToken.END_OBJECT) {
                        break;
                    }
                }
                if (jsonParser.a() == JsonToken.VALUE_NUMBER_INT) {
                    num = Integer.valueOf(jsonParser.i());
                }
            }
        } catch (IOException e) {
        }
        return num;
    }

    public Integer d() {
        return (Integer) b();
    }
}
