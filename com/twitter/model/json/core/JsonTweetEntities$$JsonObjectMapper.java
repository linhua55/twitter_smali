package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.ap;
import com.twitter.model.core.b;
import com.twitter.model.core.cr;
import com.twitter.model.core.q;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTweetEntities$$JsonObjectMapper extends JsonMapper<JsonTweetEntities> {
    public JsonTweetEntities parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTweetEntities _parse(JsonParser jsonParser) throws IOException {
        JsonTweetEntities jsonTweetEntities = new JsonTweetEntities();
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
            parseField(jsonTweetEntities, e, jsonParser);
            jsonParser.c();
        }
        return jsonTweetEntities;
    }

    public static void parseField(JsonTweetEntities jsonTweetEntities, String str, JsonParser jsonParser) throws IOException {
        List arrayList;
        if ("hashtags".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    q qVar = (q) LoganSquare.typeConverterFor(q.class).parse(jsonParser);
                    if (qVar != null) {
                        arrayList.add(qVar);
                    }
                }
                jsonTweetEntities.d = arrayList;
                return;
            }
            jsonTweetEntities.d = null;
        } else if ("media".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    MediaEntity mediaEntity = (MediaEntity) LoganSquare.typeConverterFor(MediaEntity.class).parse(jsonParser);
                    if (mediaEntity != null) {
                        arrayList.add(mediaEntity);
                    }
                }
                jsonTweetEntities.b = arrayList;
                return;
            }
            jsonTweetEntities.b = null;
        } else if ("symbols".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    b bVar = (b) LoganSquare.typeConverterFor(b.class).parse(jsonParser);
                    if (bVar != null) {
                        arrayList.add(bVar);
                    }
                }
                jsonTweetEntities.e = arrayList;
                return;
            }
            jsonTweetEntities.e = null;
        } else if ("urls".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    cr crVar = (cr) LoganSquare.typeConverterFor(cr.class).parse(jsonParser);
                    if (crVar != null) {
                        arrayList.add(crVar);
                    }
                }
                jsonTweetEntities.a = arrayList;
                return;
            }
            jsonTweetEntities.a = null;
        } else if (!"user_mentions".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    ap apVar = (ap) LoganSquare.typeConverterFor(ap.class).parse(jsonParser);
                    if (apVar != null) {
                        arrayList.add(apVar);
                    }
                }
                jsonTweetEntities.c = arrayList;
                return;
            }
            jsonTweetEntities.c = null;
        }
    }

    public void serialize(JsonTweetEntities jsonTweetEntities, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTweetEntities, jsonGenerator, z);
    }

    public static void _serialize(JsonTweetEntities jsonTweetEntities, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<q> list = jsonTweetEntities.d;
        if (list != null) {
            jsonGenerator.a("hashtags");
            jsonGenerator.a();
            for (q qVar : list) {
                if (qVar != null) {
                    LoganSquare.typeConverterFor(q.class).serialize(qVar, "lslocalhashtagsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        List<MediaEntity> list2 = jsonTweetEntities.b;
        if (list2 != null) {
            jsonGenerator.a("media");
            jsonGenerator.a();
            for (MediaEntity mediaEntity : list2) {
                if (mediaEntity != null) {
                    LoganSquare.typeConverterFor(MediaEntity.class).serialize(mediaEntity, "lslocalmediaElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        List<b> list3 = jsonTweetEntities.e;
        if (list3 != null) {
            jsonGenerator.a("symbols");
            jsonGenerator.a();
            for (b bVar : list3) {
                if (bVar != null) {
                    LoganSquare.typeConverterFor(b.class).serialize(bVar, "lslocalsymbolsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        List<cr> list4 = jsonTweetEntities.a;
        if (list4 != null) {
            jsonGenerator.a("urls");
            jsonGenerator.a();
            for (cr crVar : list4) {
                if (crVar != null) {
                    LoganSquare.typeConverterFor(cr.class).serialize(crVar, "lslocalurlsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        List<ap> list5 = jsonTweetEntities.c;
        if (list5 != null) {
            jsonGenerator.a("user_mentions");
            jsonGenerator.a();
            for (ap apVar : list5) {
                if (apVar != null) {
                    LoganSquare.typeConverterFor(ap.class).serialize(apVar, "lslocaluser_mentionsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
