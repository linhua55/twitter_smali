package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import org.json.JSONObject;

@oi
public class mh extends Handler {
    private final mf a;

    public mh(Context context) {
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this(new mi(context));
    }

    public mh(mf mfVar) {
        this.a = mfVar;
    }

    private void a(JSONObject jSONObject) {
        try {
            this.a.a(jSONObject.getString("request_id"), jSONObject.getString("base_url"), jSONObject.getString("html"));
        } catch (Exception e) {
        }
    }

    public void handleMessage(Message message) {
        try {
            Bundle data = message.getData();
            if (data != null) {
                JSONObject jSONObject = new JSONObject(data.getString("data"));
                if ("fetch_html".equals(jSONObject.getString("message_name"))) {
                    a(jSONObject);
                }
            }
        } catch (Exception e) {
        }
    }
}
