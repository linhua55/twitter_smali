package com.twitter.android.client.tweetuploadmanager;

import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.k;
import com.twitter.library.service.aa;
import com.twitter.model.core.cd;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: Twttr */
public class d {
    private final List<String> a;
    private int[] b;
    private aa c;
    private boolean d;

    public d() {
        this.b = cd.b;
        this.a = new LinkedList();
        this.d = false;
    }

    void a(TweetUploadManager$TweetUploadState tweetUploadManager$TweetUploadState) {
        this.a.add(tweetUploadManager$TweetUploadState.name());
    }

    public int[] a() {
        return this.b;
    }

    public aa b() {
        return this.c;
    }

    public boolean c() {
        return this.d;
    }

    public void a(int[] iArr) {
        this.b = iArr;
    }

    public void a(aa aaVar) {
        this.c = aaVar;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public JSONObject d() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("shouldScribeNetworkSuccess", this.d);
        if (this.c != null) {
            JSONObject jSONObject2 = new JSONObject();
            HttpOperation f = this.c.f();
            if (!(f == null || f.i() == null)) {
                jSONObject2.put("url", f.i().toString());
            }
            k g = this.c.g();
            jSONObject2.put("statusCode", g != null ? g.a : 0);
        }
        JSONArray jSONArray = new JSONArray();
        for (String put : this.a) {
            jSONArray.put(put);
        }
        jSONObject.put("statesExecuted", jSONArray);
        return jSONObject;
    }
}
