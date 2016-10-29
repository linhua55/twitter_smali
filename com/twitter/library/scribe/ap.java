package com.twitter.library.scribe;

import android.content.Context;
import com.twitter.model.account.OAuthToken;
import java.util.List;
import org.apache.http.message.BasicNameValuePair;

/* compiled from: Twttr */
public interface ap {
    ap a(Context context);

    ap a(OAuthToken oAuthToken);

    ap a(String str);

    ap a(List<BasicNameValuePair> list);

    ap a(byte[] bArr);

    boolean a();

    int b();

    ap b(Context context);
}
