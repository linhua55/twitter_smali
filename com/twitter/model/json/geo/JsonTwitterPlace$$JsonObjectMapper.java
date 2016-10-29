package com.twitter.model.json.geo;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.geo.TwitterPlace.PlaceType;
import com.twitter.model.geo.VendorInfo;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterPlace$$JsonObjectMapper extends JsonMapper<JsonTwitterPlace> {
    public JsonTwitterPlace parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterPlace _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterPlace jsonTwitterPlace = new JsonTwitterPlace();
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
            parseField(jsonTwitterPlace, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterPlace;
    }

    public static void parseField(JsonTwitterPlace jsonTwitterPlace, String str, JsonParser jsonParser) throws IOException {
        if ("attributes".equals(str)) {
            jsonTwitterPlace.j = JsonTwitterPlace$JsonPlaceAttributes$$JsonObjectMapper._parse(jsonParser);
        } else if ("bounding_box".equals(str)) {
            jsonTwitterPlace.i = JsonTwitterPlace$CoordinateArray$$JsonObjectMapper._parse(jsonParser);
        } else if ("centroid".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List<Double> arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    arrayList.add(Double.valueOf(jsonParser.q()));
                }
                double[] dArr = new double[arrayList.size()];
                int i = 0;
                for (Double doubleValue : arrayList) {
                    int i2 = i + 1;
                    dArr[i] = doubleValue.doubleValue();
                    i = i2;
                }
                jsonTwitterPlace.h = dArr;
                return;
            }
            jsonTwitterPlace.h = null;
        } else if ("contained_within".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList2 = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    TwitterPlace twitterPlace = (TwitterPlace) LoganSquare.typeConverterFor(TwitterPlace.class).parse(jsonParser);
                    if (twitterPlace != null) {
                        arrayList2.add(twitterPlace);
                    }
                }
                jsonTwitterPlace.g = (TwitterPlace[]) arrayList2.toArray(new TwitterPlace[arrayList2.size()]);
                return;
            }
            jsonTwitterPlace.g = null;
        } else if ("country".equals(str)) {
            jsonTwitterPlace.e = jsonParser.a(null);
        } else if ("country_code".equals(str)) {
            jsonTwitterPlace.f = jsonParser.a(null);
        } else if ("full_name".equals(str)) {
            jsonTwitterPlace.a = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonTwitterPlace.d = jsonParser.a(null);
        } else if ("name".equals(str)) {
            jsonTwitterPlace.b = jsonParser.a(null);
        } else if ("place_type".equals(str)) {
            jsonTwitterPlace.c = (PlaceType) LoganSquare.typeConverterFor(PlaceType.class).parse(jsonParser);
        } else if ("vendor_info".equals(str)) {
            jsonTwitterPlace.k = (VendorInfo) LoganSquare.typeConverterFor(VendorInfo.class).parse(jsonParser);
        }
    }

    public void serialize(JsonTwitterPlace jsonTwitterPlace, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterPlace, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterPlace jsonTwitterPlace, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTwitterPlace.j != null) {
            jsonGenerator.a("attributes");
            JsonTwitterPlace$JsonPlaceAttributes$$JsonObjectMapper._serialize(jsonTwitterPlace.j, jsonGenerator, true);
        }
        if (jsonTwitterPlace.i != null) {
            jsonGenerator.a("bounding_box");
            JsonTwitterPlace$CoordinateArray$$JsonObjectMapper._serialize(jsonTwitterPlace.i, jsonGenerator, true);
        }
        double[] dArr = jsonTwitterPlace.h;
        if (dArr != null) {
            jsonGenerator.a("centroid");
            jsonGenerator.a();
            for (double a : dArr) {
                jsonGenerator.a(a);
            }
            jsonGenerator.b();
        }
        TwitterPlace[] twitterPlaceArr = jsonTwitterPlace.g;
        if (twitterPlaceArr != null) {
            jsonGenerator.a("contained_within");
            jsonGenerator.a();
            for (Object obj : twitterPlaceArr) {
                if (obj != null) {
                    LoganSquare.typeConverterFor(TwitterPlace.class).serialize(obj, "lslocalcontained_withinElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("country", jsonTwitterPlace.e);
        jsonGenerator.a("country_code", jsonTwitterPlace.f);
        jsonGenerator.a("full_name", jsonTwitterPlace.a);
        jsonGenerator.a("id", jsonTwitterPlace.d);
        jsonGenerator.a("name", jsonTwitterPlace.b);
        if (jsonTwitterPlace.c != null) {
            LoganSquare.typeConverterFor(PlaceType.class).serialize(jsonTwitterPlace.c, "place_type", true, jsonGenerator);
        }
        if (jsonTwitterPlace.k != null) {
            LoganSquare.typeConverterFor(VendorInfo.class).serialize(jsonTwitterPlace.k, "vendor_info", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
