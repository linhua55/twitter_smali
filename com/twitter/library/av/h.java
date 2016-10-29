package com.twitter.library.av;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import cvi;
import java.io.Closeable;
import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;

/* compiled from: Twttr */
public class h {
    public String a;
    public boolean b;
    public String c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public String i;
    public int j;
    public long k;
    public int l;

    public h() {
        this.k = -1;
        this.l = -1;
    }

    public String a() {
        Closeable a;
        String stringBuffer;
        Throwable th;
        try {
            Writer stringWriter = new StringWriter();
            a = new JsonFactory().a(stringWriter);
            try {
                a(a);
                a.flush();
                stringBuffer = stringWriter.getBuffer().toString();
                cvi.a(a);
            } catch (IOException e) {
                try {
                    stringBuffer = TtmlNode.ANONYMOUS_REGION_ID;
                    cvi.a(a);
                    return stringBuffer;
                } catch (Throwable th2) {
                    th = th2;
                    cvi.a(a);
                    throw th;
                }
            }
        } catch (IOException e2) {
            a = null;
            stringBuffer = TtmlNode.ANONYMOUS_REGION_ID;
            cvi.a(a);
            return stringBuffer;
        } catch (Throwable th3) {
            Throwable th4 = th3;
            a = null;
            th = th4;
            cvi.a(a);
            throw th;
        }
        return stringBuffer;
    }

    private void a(JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.c();
        jsonGenerator.e("amplify_details");
        if (this.i != null) {
            jsonGenerator.a("playlist_url", this.i);
        }
        if (this.h != null) {
            jsonGenerator.a("content_id", this.h);
        }
        jsonGenerator.a("video_is_muted", this.b);
        if (this.a != null) {
            jsonGenerator.a("video_uuid", this.a);
        }
        if (this.c != null) {
            jsonGenerator.a("video_type", this.c);
        }
        if (this.d != null) {
            jsonGenerator.a("cta_url", this.d);
        }
        if (this.e != null) {
            jsonGenerator.a("play_store_id", this.e);
        }
        if (this.f != null) {
            jsonGenerator.a("play_store_name", this.f);
        }
        if (this.g != null) {
            jsonGenerator.a("preroll_uuid", this.g);
        }
        if (this.l != -1) {
            jsonGenerator.a("dynamic_preroll_type", this.l);
        }
        if (this.k != -1) {
            jsonGenerator.a("preroll_owner_id", this.k);
        }
        jsonGenerator.a("video_visibility", this.j);
        jsonGenerator.d();
        jsonGenerator.d();
    }
}
