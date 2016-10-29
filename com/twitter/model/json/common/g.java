package com.twitter.model.json.common;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.bluelinelabs.logansquare.typeconverters.TypeConverter;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.util.collection.d;
import com.twitter.util.collection.n;
import com.twitter.util.collection.r;
import com.twitter.util.object.f;
import defpackage.bbn;
import java.io.InputStream;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class g {
    public static <M> void a(Class<M> cls, TypeConverter<M> typeConverter) {
        LoganSquare.registerTypeConverter(cls, typeConverter);
    }

    public static <M, J extends f<M>> void a(Class<M> cls, Class<J> cls2) {
        a((Class) cls, new h(cls2));
    }

    public static <M, B extends f<M>, J extends e<M>> void b(Class<B> cls, Class<J> cls2) {
        a((Class) cls, new i(cls2));
    }

    public static <M, J extends f<M>> M a(JsonParser jsonParser, Class<J> cls) {
        return j.a((f) g(jsonParser, cls));
    }

    public static <M, J extends e<M>> f<M> b(JsonParser jsonParser, Class<J> cls) {
        return j.a((e) g(jsonParser, cls));
    }

    public static <T> T a(InputStream inputStream, Class<T> cls) {
        JsonParser a = a(inputStream);
        return a != null ? c(a, cls) : null;
    }

    public static <T> T a(String str, Class<T> cls) {
        JsonParser a = a(str);
        return a != null ? c(a, cls) : null;
    }

    public static <T> T c(JsonParser jsonParser, Class<T> cls) {
        if (j.a(cls)) {
            return g(jsonParser, cls);
        }
        return h(jsonParser, cls);
    }

    public static <T> List<T> b(String str, Class<T> cls) {
        JsonParser a = a(str);
        return a != null ? d(a, cls) : n.g();
    }

    public static <T> List<T> d(JsonParser jsonParser, Class<T> cls) {
        return (List) a(jsonParser, (Class) cls, n.d());
    }

    public static <T, C extends Collection<T>> C a(JsonParser jsonParser, Class<T> cls, d<T, C> dVar) {
        if (j.a(cls)) {
            return b(jsonParser, (Class) cls, (d) dVar);
        }
        return c(jsonParser, (Class) cls, (d) dVar);
    }

    public static <T> Map<String, T> e(JsonParser jsonParser, Class<T> cls) {
        return a(jsonParser, (Class) cls, r.d());
    }

    public static <T> Map<String, T> a(JsonParser jsonParser, Class<T> cls, r<String, T> rVar) {
        if (j.a(cls)) {
            return b(jsonParser, (Class) cls, (r) rVar);
        }
        return c(jsonParser, (Class) cls, (r) rVar);
    }

    public static <T> Iterable<T> f(JsonParser jsonParser, Class<T> cls) {
        return e(jsonParser, cls).values();
    }

    private static <J extends b> J g(JsonParser jsonParser, Class<J> cls) {
        JsonModelRegistry.a();
        try {
            return (b) LoganSquare.mapperFor(cls).parse(jsonParser);
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    private static <J extends b, C extends Collection<J>> C b(JsonParser jsonParser, Class<J> cls, d<J, C> dVar) {
        JsonModelRegistry.a();
        JsonMapper mapperFor = LoganSquare.mapperFor(cls);
        try {
            if (jsonParser.d() == JsonToken.d) {
                while (jsonParser.a() != JsonToken.e) {
                    dVar.a(mapperFor.parse(jsonParser));
                }
            }
        } catch (Throwable e) {
            bbn.a(e);
        }
        return dVar.a();
    }

    private static <J extends b> Map<String, J> b(JsonParser jsonParser, Class<J> cls, r<String, J> rVar) {
        JsonModelRegistry.a();
        JsonMapper mapperFor = LoganSquare.mapperFor(cls);
        while (jsonParser.a() != JsonToken.c) {
            try {
                String g = jsonParser.g();
                jsonParser.a();
                if (jsonParser.d() != JsonToken.m) {
                    rVar.b(g, mapperFor.parse(jsonParser));
                }
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
        return (Map) rVar.q();
    }

    private static <T> T h(JsonParser jsonParser, Class<T> cls) {
        JsonModelRegistry.a();
        try {
            return LoganSquare.typeConverterFor(cls).parse(jsonParser);
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    private static <T, C extends Collection<T>> C c(JsonParser jsonParser, Class<T> cls, d<T, C> dVar) {
        JsonModelRegistry.a();
        TypeConverter typeConverterFor = LoganSquare.typeConverterFor(cls);
        try {
            if (jsonParser.d() == JsonToken.d) {
                while (jsonParser.a() != JsonToken.e) {
                    dVar.a(typeConverterFor.parse(jsonParser));
                }
            }
        } catch (Throwable e) {
            bbn.a(e);
        }
        return dVar.a();
    }

    private static <T> Map<String, T> c(JsonParser jsonParser, Class<T> cls, r<String, T> rVar) {
        JsonModelRegistry.a();
        TypeConverter typeConverterFor = LoganSquare.typeConverterFor(cls);
        while (jsonParser.a() != JsonToken.c) {
            try {
                String g = jsonParser.g();
                jsonParser.a();
                if (jsonParser.d() != JsonToken.m) {
                    rVar.b(g, typeConverterFor.parse(jsonParser));
                }
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
        return (Map) rVar.q();
    }

    private static JsonParser a(InputStream inputStream) {
        try {
            JsonParser a = LoganSquare.JSON_FACTORY.a(inputStream);
            a.a();
            return a;
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }

    private static JsonParser a(String str) {
        try {
            JsonParser a = LoganSquare.JSON_FACTORY.a(str);
            a.a();
            return a;
        } catch (Throwable e) {
            bbn.a(e);
            return null;
        }
    }
}
