package com.twitter.library.api.upload;

import android.content.Context;
import android.net.Uri;
import bbn;
import com.twitter.internal.network.HttpOperation;
import com.twitter.internal.network.HttpOperation.RequestMethod;
import com.twitter.internal.network.i;
import com.twitter.library.network.j;
import com.twitter.library.network.m;
import com.twitter.library.network.w;
import com.twitter.library.service.aa;
import com.twitter.library.util.aq;
import com.twitter.util.aj;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import org.apache.http.HttpEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: Twttr */
public class ab {
    public final Context a;
    public final com.twitter.library.service.ab b;
    public StringBuilder c;
    public RequestMethod d;
    public i e;
    public int f;
    public HttpEntity g;

    public ab(Context context, com.twitter.library.service.ab abVar) {
        this.a = context;
        this.b = abVar;
        this.d = RequestMethod.b;
        this.f = 60000;
    }

    public ab a(StringBuilder stringBuilder) {
        this.c = stringBuilder;
        return this;
    }

    public ab a(i iVar) {
        this.e = iVar;
        return this;
    }

    public ab a(ArrayList<BasicNameValuePair> arrayList) {
        if (!(arrayList == null || arrayList.isEmpty())) {
            a(aq.a(arrayList));
        }
        return this;
    }

    public ab a(String str) {
        if (!(str == null || str.isEmpty())) {
            try {
                this.g = new StringEntity(str, Util.UTF_8);
                ((StringEntity) this.g).setContentType("application/x-www-form-urlencoded");
            } catch (UnsupportedEncodingException e) {
            }
        }
        return this;
    }

    public ab a(String str, Uri uri) {
        HttpEntity mVar;
        if (uri != null) {
            try {
                mVar = new m(this.a, null);
                mVar.a(str, aj.a(8), uri);
                mVar.a();
            } catch (Throwable e) {
                bbn.a(e);
                mVar = null;
            }
        } else {
            mVar = null;
        }
        this.g = mVar;
        return this;
    }

    public HttpOperation a() {
        if (this.c == null) {
            throw new IllegalStateException();
        }
        HttpOperation a = new j(this.a, this.c).a(this.b.c).a(this.d).b("Uploads are always triggered by a user action.").a(new w(this.b.d)).a(this.e).a(this.g).a();
        if (this.f > 0) {
            a.a(this.f);
        }
        return a;
    }

    public aa a(HttpOperation httpOperation, aa aaVar) {
        if (httpOperation != null) {
            aaVar.a(httpOperation);
        } else {
            aaVar.a(false);
        }
        return aaVar;
    }
}
