package com.bluelinelabs.logansquare;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public abstract class JsonMapper<T> {
    public abstract T parse(JsonParser jsonParser) throws IOException;

    public abstract void serialize(T t, JsonGenerator jsonGenerator, boolean z) throws IOException;

    public T parse(InputStream inputStream) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(inputStream);
        a.a();
        return parse(a);
    }

    public T parse(byte[] bArr) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(bArr);
        a.a();
        return parse(a);
    }

    public T parse(char[] cArr) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(cArr);
        a.a();
        return parse(a);
    }

    public T parse(String str) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(str);
        a.a();
        return parse(a);
    }

    public List<T> parseList(InputStream inputStream) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(inputStream);
        a.a();
        return parseList(a);
    }

    public List<T> parseList(byte[] bArr) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(bArr);
        a.a();
        return parseList(a);
    }

    public List<T> parseList(char[] cArr) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(cArr);
        a.a();
        return parseList(a);
    }

    public List<T> parseList(String str) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(str);
        a.a();
        return parseList(a);
    }

    public List<T> parseList(JsonParser jsonParser) throws IOException {
        List<T> arrayList = new ArrayList();
        if (jsonParser.d() == JsonToken.START_ARRAY) {
            while (jsonParser.a() != JsonToken.END_ARRAY) {
                Object parse = parse(jsonParser);
                if (parse != null) {
                    arrayList.add(parse);
                }
            }
        }
        return arrayList;
    }

    public Map<String, T> parseMap(InputStream inputStream) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(inputStream);
        a.a();
        return parseMap(a);
    }

    public Map<String, T> parseMap(byte[] bArr) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(bArr);
        a.a();
        return parseMap(a);
    }

    public Map<String, T> parseMap(char[] cArr) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(cArr);
        a.a();
        return parseMap(a);
    }

    public Map<String, T> parseMap(String str) throws IOException {
        JsonParser a = LoganSquare.JSON_FACTORY.a(str);
        a.a();
        return parseMap(a);
    }

    public Map<String, T> parseMap(JsonParser jsonParser) throws IOException {
        Map hashMap = new HashMap();
        while (jsonParser.a() != JsonToken.END_OBJECT) {
            String g = jsonParser.g();
            jsonParser.a();
            if (jsonParser.d() == JsonToken.VALUE_NULL) {
                hashMap.put(g, null);
            } else {
                hashMap.put(g, parse(jsonParser));
            }
        }
        return hashMap;
    }

    public String serialize(T t) throws IOException {
        Writer stringWriter = new StringWriter();
        JsonGenerator a = LoganSquare.JSON_FACTORY.a(stringWriter);
        serialize(t, a, true);
        a.close();
        return stringWriter.toString();
    }

    public void serialize(T t, OutputStream outputStream) throws IOException {
        JsonGenerator a = LoganSquare.JSON_FACTORY.a(outputStream);
        serialize(t, a, true);
        a.close();
    }

    public String serialize(List<T> list) throws IOException {
        Writer stringWriter = new StringWriter();
        JsonGenerator a = LoganSquare.JSON_FACTORY.a(stringWriter);
        serialize((List) list, a);
        a.close();
        return stringWriter.toString();
    }

    public void serialize(List<T> list, OutputStream outputStream) throws IOException {
        JsonGenerator a = LoganSquare.JSON_FACTORY.a(outputStream);
        serialize((List) list, a);
        a.close();
    }

    public void serialize(List<T> list, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.a();
        for (T serialize : list) {
            serialize(serialize, jsonGenerator, true);
        }
        jsonGenerator.b();
    }

    public String serialize(Map<String, T> map) throws IOException {
        Writer stringWriter = new StringWriter();
        JsonGenerator a = LoganSquare.JSON_FACTORY.a(stringWriter);
        serialize((Map) map, a);
        a.close();
        return stringWriter.toString();
    }

    public void serialize(Map<String, T> map, OutputStream outputStream) throws IOException {
        JsonGenerator a = LoganSquare.JSON_FACTORY.a(outputStream);
        serialize((Map) map, a);
        a.close();
    }

    public void serialize(Map<String, T> map, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        for (Entry entry : map.entrySet()) {
            jsonGenerator.a((String) entry.getKey());
            if (entry.getValue() == null) {
                jsonGenerator.e();
            } else {
                serialize(entry.getValue(), jsonGenerator, true);
            }
        }
        jsonGenerator.d();
    }
}
