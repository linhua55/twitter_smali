package com.bluelinelabs.logansquare;

import com.bluelinelabs.logansquare.typeconverters.DefaultCalendarConverter;
import com.bluelinelabs.logansquare.typeconverters.DefaultDateConverter;
import com.bluelinelabs.logansquare.typeconverters.TypeConverter;
import com.fasterxml.jackson.core.JsonFactory;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: Twttr */
public class LoganSquare {
    public static final JsonFactory JSON_FACTORY;
    private static final Map<Class, JsonMapper> OBJECT_MAPPERS;
    private static final Map<Class, TypeConverter> TYPE_CONVERTERS;

    static {
        OBJECT_MAPPERS = new HashMap();
        TYPE_CONVERTERS = new HashMap();
        registerTypeConverter(Date.class, new DefaultDateConverter());
        registerTypeConverter(Calendar.class, new DefaultCalendarConverter());
        JSON_FACTORY = new JsonFactory();
    }

    public static <E> E parse(InputStream inputStream, Class<E> cls) throws IOException {
        return mapperFor(cls).parse(inputStream);
    }

    public static <E> E parse(String str, Class<E> cls) throws IOException {
        return mapperFor(cls).parse(str);
    }

    public static <E> List<E> parseList(InputStream inputStream, Class<E> cls) throws IOException {
        return mapperFor(cls).parseList(inputStream);
    }

    public static <E> List<E> parseList(String str, Class<E> cls) throws IOException {
        return mapperFor(cls).parseList(str);
    }

    public static <E> Map<String, E> parseMap(InputStream inputStream, Class<E> cls) throws IOException {
        return mapperFor(cls).parseMap(inputStream);
    }

    public static <E> Map<String, E> parseMap(String str, Class<E> cls) throws IOException {
        return mapperFor(cls).parseMap(str);
    }

    public static <E> String serialize(E e) throws IOException {
        return mapperFor(e.getClass()).serialize((Object) e);
    }

    public static <E> void serialize(E e, OutputStream outputStream) throws IOException {
        mapperFor(e.getClass()).serialize((Object) e, outputStream);
    }

    public static <E> String serialize(List<E> list, Class<E> cls) throws IOException {
        return mapperFor(cls).serialize((List) list);
    }

    public static <E> void serialize(List<E> list, OutputStream outputStream, Class<E> cls) throws IOException {
        mapperFor(cls).serialize((List) list, outputStream);
    }

    public static <E> String serialize(Map<String, E> map, Class<E> cls) throws IOException {
        return mapperFor(cls).serialize((Map) map);
    }

    public static <E> void serialize(Map<String, E> map, OutputStream outputStream, Class<E> cls) throws IOException {
        mapperFor(cls).serialize((Map) map, outputStream);
    }

    public static <E> JsonMapper<E> mapperFor(Class<E> cls) throws NoSuchMapperException {
        JsonMapper<E> jsonMapper = (JsonMapper) OBJECT_MAPPERS.get(cls);
        if (jsonMapper != null) {
            return jsonMapper;
        }
        try {
            jsonMapper = (JsonMapper) Class.forName(cls.getName() + Constants.MAPPER_CLASS_SUFFIX).newInstance();
            OBJECT_MAPPERS.put(cls, jsonMapper);
            return jsonMapper;
        } catch (Exception e) {
            throw new NoSuchMapperException(cls, e);
        }
    }

    public static <E> TypeConverter<E> typeConverterFor(Class<E> cls) throws NoSuchTypeConverterException {
        TypeConverter<E> typeConverter = (TypeConverter) TYPE_CONVERTERS.get(cls);
        if (typeConverter != null) {
            return typeConverter;
        }
        throw new NoSuchTypeConverterException(cls);
    }

    public static <E> void registerTypeConverter(Class<E> cls, TypeConverter<E> typeConverter) {
        TYPE_CONVERTERS.put(cls, typeConverter);
    }
}
