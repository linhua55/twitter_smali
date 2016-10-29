package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.businessprofiles.ad;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonBusinessHours$$JsonObjectMapper extends JsonMapper<JsonBusinessHours> {
    public JsonBusinessHours parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonBusinessHours _parse(JsonParser jsonParser) throws IOException {
        JsonBusinessHours jsonBusinessHours = new JsonBusinessHours();
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
            parseField(jsonBusinessHours, e, jsonParser);
            jsonParser.c();
        }
        return jsonBusinessHours;
    }

    public static void parseField(JsonBusinessHours jsonBusinessHours, String str, JsonParser jsonParser) throws IOException {
        List arrayList;
        ad adVar;
        if ("friday".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    adVar = (ad) LoganSquare.typeConverterFor(ad.class).parse(jsonParser);
                    if (adVar != null) {
                        arrayList.add(adVar);
                    }
                }
                jsonBusinessHours.f = arrayList;
                return;
            }
            jsonBusinessHours.f = null;
        } else if ("monday".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    adVar = (ad) LoganSquare.typeConverterFor(ad.class).parse(jsonParser);
                    if (adVar != null) {
                        arrayList.add(adVar);
                    }
                }
                jsonBusinessHours.b = arrayList;
                return;
            }
            jsonBusinessHours.b = null;
        } else if ("saturday".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    adVar = (ad) LoganSquare.typeConverterFor(ad.class).parse(jsonParser);
                    if (adVar != null) {
                        arrayList.add(adVar);
                    }
                }
                jsonBusinessHours.g = arrayList;
                return;
            }
            jsonBusinessHours.g = null;
        } else if ("sunday".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    adVar = (ad) LoganSquare.typeConverterFor(ad.class).parse(jsonParser);
                    if (adVar != null) {
                        arrayList.add(adVar);
                    }
                }
                jsonBusinessHours.h = arrayList;
                return;
            }
            jsonBusinessHours.h = null;
        } else if ("thursday".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    adVar = (ad) LoganSquare.typeConverterFor(ad.class).parse(jsonParser);
                    if (adVar != null) {
                        arrayList.add(adVar);
                    }
                }
                jsonBusinessHours.e = arrayList;
                return;
            }
            jsonBusinessHours.e = null;
        } else if ("time_zone".equals(str)) {
            jsonBusinessHours.a = jsonParser.a(null);
        } else if ("tuesday".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    adVar = (ad) LoganSquare.typeConverterFor(ad.class).parse(jsonParser);
                    if (adVar != null) {
                        arrayList.add(adVar);
                    }
                }
                jsonBusinessHours.c = arrayList;
                return;
            }
            jsonBusinessHours.c = null;
        } else if (!"wednesday".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    adVar = (ad) LoganSquare.typeConverterFor(ad.class).parse(jsonParser);
                    if (adVar != null) {
                        arrayList.add(adVar);
                    }
                }
                jsonBusinessHours.d = arrayList;
                return;
            }
            jsonBusinessHours.d = null;
        }
    }

    public void serialize(JsonBusinessHours jsonBusinessHours, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonBusinessHours, jsonGenerator, z);
    }

    public static void _serialize(JsonBusinessHours jsonBusinessHours, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<ad> list = jsonBusinessHours.f;
        if (list != null) {
            jsonGenerator.a("friday");
            jsonGenerator.a();
            for (ad adVar : list) {
                if (adVar != null) {
                    LoganSquare.typeConverterFor(ad.class).serialize(adVar, "lslocalfridayElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        list = jsonBusinessHours.b;
        if (list != null) {
            jsonGenerator.a("monday");
            jsonGenerator.a();
            for (ad adVar2 : list) {
                if (adVar2 != null) {
                    LoganSquare.typeConverterFor(ad.class).serialize(adVar2, "lslocalmondayElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        list = jsonBusinessHours.g;
        if (list != null) {
            jsonGenerator.a("saturday");
            jsonGenerator.a();
            for (ad adVar22 : list) {
                if (adVar22 != null) {
                    LoganSquare.typeConverterFor(ad.class).serialize(adVar22, "lslocalsaturdayElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        list = jsonBusinessHours.h;
        if (list != null) {
            jsonGenerator.a("sunday");
            jsonGenerator.a();
            for (ad adVar222 : list) {
                if (adVar222 != null) {
                    LoganSquare.typeConverterFor(ad.class).serialize(adVar222, "lslocalsundayElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        list = jsonBusinessHours.e;
        if (list != null) {
            jsonGenerator.a("thursday");
            jsonGenerator.a();
            for (ad adVar2222 : list) {
                if (adVar2222 != null) {
                    LoganSquare.typeConverterFor(ad.class).serialize(adVar2222, "lslocalthursdayElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("time_zone", jsonBusinessHours.a);
        list = jsonBusinessHours.c;
        if (list != null) {
            jsonGenerator.a("tuesday");
            jsonGenerator.a();
            for (ad adVar22222 : list) {
                if (adVar22222 != null) {
                    LoganSquare.typeConverterFor(ad.class).serialize(adVar22222, "lslocaltuesdayElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        list = jsonBusinessHours.d;
        if (list != null) {
            jsonGenerator.a("wednesday");
            jsonGenerator.a();
            for (ad adVar222222 : list) {
                if (adVar222222 != null) {
                    LoganSquare.typeConverterFor(ad.class).serialize(adVar222222, "lslocalwednesdayElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
