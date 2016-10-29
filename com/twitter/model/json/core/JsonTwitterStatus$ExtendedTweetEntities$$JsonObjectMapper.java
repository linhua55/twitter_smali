package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.json.core.JsonTwitterStatus.ExtendedTweetEntities;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterStatus$ExtendedTweetEntities$$JsonObjectMapper extends JsonMapper<ExtendedTweetEntities> {
    public ExtendedTweetEntities parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static ExtendedTweetEntities _parse(JsonParser jsonParser) throws IOException {
        ExtendedTweetEntities extendedTweetEntities = new ExtendedTweetEntities();
        if (jsonParser.d() == null) {
            jsonParser.a();
        }
        if (jsonParser.d() != JsonToken.b) {
            jsonParser.c();
            return null;
        }
        while (jsonParser.a() != JsonToken.c) {
            String e = jsonParser.e();
            jsonParser.a();
            parseField(extendedTweetEntities, e, jsonParser);
            jsonParser.c();
        }
        return extendedTweetEntities;
    }

    public static void parseField(ExtendedTweetEntities extendedTweetEntities, String str, JsonParser jsonParser) throws IOException {
        if (!"media".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                MediaEntity mediaEntity = (MediaEntity) LoganSquare.typeConverterFor(MediaEntity.class).parse(jsonParser);
                if (mediaEntity != null) {
                    arrayList.add(mediaEntity);
                }
            }
            extendedTweetEntities.a = arrayList;
            return;
        }
        extendedTweetEntities.a = null;
    }

    public void serialize(ExtendedTweetEntities extendedTweetEntities, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(extendedTweetEntities, jsonGenerator, z);
    }

    public static void _serialize(ExtendedTweetEntities extendedTweetEntities, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<MediaEntity> list = extendedTweetEntities.a;
        if (list != null) {
            jsonGenerator.a("media");
            jsonGenerator.a();
            for (MediaEntity mediaEntity : list) {
                if (mediaEntity != null) {
                    LoganSquare.typeConverterFor(MediaEntity.class).serialize(mediaEntity, "lslocalmediaElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
