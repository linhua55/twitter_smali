package com.twitter.library.scribe;

import android.content.Context;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.library.network.j;
import com.twitter.library.network.w;
import com.twitter.model.account.OAuthToken;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: Twttr */
public class am implements ap {
    private OAuthToken a;
    private List<BasicNameValuePair> b;
    private byte[] c;
    private String d;
    private an e;
    private boolean f;
    private int g;

    public ap a(OAuthToken oAuthToken) {
        this.a = oAuthToken;
        return this;
    }

    public ap a(byte[] bArr) {
        this.c = bArr;
        return this;
    }

    public ap a(List<BasicNameValuePair> list) {
        this.b = list;
        return this;
    }

    public ap a(String str) {
        this.d = str;
        return this;
    }

    public ap a(Context context) {
        HttpOperation c = new j(context, this.d).a(RequestMethod.POST).a(new w(this.a)).a("Scribing is never triggered by a user action.").a(this.e).a(this.b).a().c();
        this.f = c.j();
        this.g = c.l().a;
        return this;
    }

    public ap b(Context context) {
        j a = new j(context, this.d).a(RequestMethod.POST).a(new w(this.a)).a("Scribing is never triggered by a user action.").a(this.e);
        HttpEntity byteArrayEntity = new ByteArrayEntity(this.c);
        byteArrayEntity.setContentType("application/octet-stream");
        a.a(byteArrayEntity);
        HttpOperation c = a.a().c();
        this.f = c.j();
        this.g = c.l().a;
        return this;
    }

    public boolean a() {
        return this.f;
    }

    public int b() {
        return this.g;
    }
}
