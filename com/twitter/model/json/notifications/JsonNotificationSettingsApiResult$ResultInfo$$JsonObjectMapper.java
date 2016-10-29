package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.notifications.JsonNotificationSettingsApiResult.ResultInfo;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonNotificationSettingsApiResult$ResultInfo$$JsonObjectMapper extends JsonMapper<ResultInfo> {
    public ResultInfo parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static ResultInfo _parse(JsonParser jsonParser) throws IOException {
        ResultInfo resultInfo = new ResultInfo();
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
            parseField(resultInfo, e, jsonParser);
            jsonParser.c();
        }
        return resultInfo;
    }

    public static void parseField(ResultInfo resultInfo, String str, JsonParser jsonParser) throws IOException {
        Boolean bool = null;
        if ("checksum".equals(str)) {
            resultInfo.a = jsonParser.a(null);
        } else if ("sleep_hour_begin".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                r0 = Integer.valueOf(jsonParser.o());
            }
            resultInfo.c = r0;
        } else if ("sleep_hour_end".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                r0 = Integer.valueOf(jsonParser.o());
            }
            resultInfo.d = r0;
        } else if ("sleep_setting_enabled".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                bool = Boolean.valueOf(jsonParser.r());
            }
            resultInfo.b = bool;
        }
    }

    public void serialize(ResultInfo resultInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(resultInfo, jsonGenerator, z);
    }

    public static void _serialize(ResultInfo resultInfo, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("checksum", resultInfo.a);
        jsonGenerator.a("sleep_hour_begin", resultInfo.c.intValue());
        jsonGenerator.a("sleep_hour_end", resultInfo.d.intValue());
        jsonGenerator.a("sleep_setting_enabled", resultInfo.b.booleanValue());
        if (z) {
            jsonGenerator.d();
        }
    }
}
