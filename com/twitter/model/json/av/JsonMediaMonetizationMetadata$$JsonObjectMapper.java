package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.av.JsonMediaMonetizationMetadata.JsonAdvertiser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMediaMonetizationMetadata$$JsonObjectMapper extends JsonMapper<JsonMediaMonetizationMetadata> {
    public JsonMediaMonetizationMetadata parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaMonetizationMetadata _parse(JsonParser jsonParser) throws IOException {
        JsonMediaMonetizationMetadata jsonMediaMonetizationMetadata = new JsonMediaMonetizationMetadata();
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
            parseField(jsonMediaMonetizationMetadata, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaMonetizationMetadata;
    }

    public static void parseField(JsonMediaMonetizationMetadata jsonMediaMonetizationMetadata, String str, JsonParser jsonParser) throws IOException {
        List arrayList;
        JsonAdvertiser _parse;
        if ("advertiserBlacklist".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    _parse = JsonMediaMonetizationMetadata$JsonAdvertiser$$JsonObjectMapper._parse(jsonParser);
                    if (_parse != null) {
                        arrayList.add(_parse);
                    }
                }
                jsonMediaMonetizationMetadata.c = arrayList;
                return;
            }
            jsonMediaMonetizationMetadata.c = null;
        } else if ("advertiserWhitelist".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    _parse = JsonMediaMonetizationMetadata$JsonAdvertiser$$JsonObjectMapper._parse(jsonParser);
                    if (_parse != null) {
                        arrayList.add(_parse);
                    }
                }
                jsonMediaMonetizationMetadata.e = arrayList;
                return;
            }
            jsonMediaMonetizationMetadata.e = null;
        } else if ("monetizationCategories".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                r2 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    r0 = jsonParser.d() == JsonToken.m ? null : Integer.valueOf(jsonParser.o());
                    if (r0 != null) {
                        r2.add(r0);
                    }
                }
                jsonMediaMonetizationMetadata.b = r2;
                return;
            }
            jsonMediaMonetizationMetadata.b = null;
        } else if ("monetizationCategoryBlacklist".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                r2 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    r0 = jsonParser.d() == JsonToken.m ? null : Integer.valueOf(jsonParser.o());
                    if (r0 != null) {
                        r2.add(r0);
                    }
                }
                jsonMediaMonetizationMetadata.d = r2;
                return;
            }
            jsonMediaMonetizationMetadata.d = null;
        } else if ("monetizationCategoryWhitelist".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                r2 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    r0 = jsonParser.d() == JsonToken.m ? null : Integer.valueOf(jsonParser.o());
                    if (r0 != null) {
                        r2.add(r0);
                    }
                }
                jsonMediaMonetizationMetadata.f = r2;
                return;
            }
            jsonMediaMonetizationMetadata.f = null;
        } else if ("monetize".equals(str)) {
            jsonMediaMonetizationMetadata.a = jsonParser.r();
        }
    }

    public void serialize(JsonMediaMonetizationMetadata jsonMediaMonetizationMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaMonetizationMetadata, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaMonetizationMetadata jsonMediaMonetizationMetadata, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<JsonAdvertiser> list = jsonMediaMonetizationMetadata.c;
        if (list != null) {
            jsonGenerator.a("advertiserBlacklist");
            jsonGenerator.a();
            for (JsonAdvertiser jsonAdvertiser : list) {
                if (jsonAdvertiser != null) {
                    JsonMediaMonetizationMetadata$JsonAdvertiser$$JsonObjectMapper._serialize(jsonAdvertiser, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        list = jsonMediaMonetizationMetadata.e;
        if (list != null) {
            jsonGenerator.a("advertiserWhitelist");
            jsonGenerator.a();
            for (JsonAdvertiser jsonAdvertiser2 : list) {
                if (jsonAdvertiser2 != null) {
                    JsonMediaMonetizationMetadata$JsonAdvertiser$$JsonObjectMapper._serialize(jsonAdvertiser2, jsonGenerator, true);
                }
            }
            jsonGenerator.b();
        }
        List<Integer> list2 = jsonMediaMonetizationMetadata.b;
        if (list2 != null) {
            jsonGenerator.a("monetizationCategories");
            jsonGenerator.a();
            for (Integer intValue : list2) {
                jsonGenerator.b(intValue.intValue());
            }
            jsonGenerator.b();
        }
        list2 = jsonMediaMonetizationMetadata.d;
        if (list2 != null) {
            jsonGenerator.a("monetizationCategoryBlacklist");
            jsonGenerator.a();
            for (Integer intValue2 : list2) {
                jsonGenerator.b(intValue2.intValue());
            }
            jsonGenerator.b();
        }
        list2 = jsonMediaMonetizationMetadata.f;
        if (list2 != null) {
            jsonGenerator.a("monetizationCategoryWhitelist");
            jsonGenerator.a();
            for (Integer intValue22 : list2) {
                jsonGenerator.b(intValue22.intValue());
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("monetize", jsonMediaMonetizationMetadata.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
