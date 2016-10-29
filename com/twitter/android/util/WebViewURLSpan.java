package com.twitter.android.util;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.style.URLSpan;
import android.view.View;
import com.twitter.android.WebViewActivity;

/* compiled from: Twttr */
public class WebViewURLSpan extends URLSpan {
    public WebViewURLSpan(String str) {
        super(str);
    }

    public void onClick(View view) {
        Uri parse = Uri.parse(getURL());
        Context context = view.getContext();
        context.startActivity(new Intent(context, WebViewActivity.class).setData(parse));
    }
}
