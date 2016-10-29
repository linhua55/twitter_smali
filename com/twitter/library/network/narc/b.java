package com.twitter.library.network.narc;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public abstract class b {
    protected abstract JSONObject a() throws JSONException;

    protected String a(Date date) {
        TimeZone timeZone = TimeZone.getTimeZone("UTC");
        DateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
        simpleDateFormat.setTimeZone(timeZone);
        return simpleDateFormat.format(date);
    }

    protected JSONArray a(List<k> list) throws JSONException {
        JSONArray jSONArray = new JSONArray();
        for (k a : list) {
            jSONArray.put(a.a());
        }
        return jSONArray;
    }

    public String toString() {
        try {
            return a().toString(3);
        } catch (JSONException e) {
            throw new AssertionError(e);
        }
    }
}
