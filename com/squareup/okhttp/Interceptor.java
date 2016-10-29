package com.squareup.okhttp;

import java.io.IOException;

/* compiled from: Twttr */
public interface Interceptor {

    /* compiled from: Twttr */
    public interface Chain {
        Connection connection();

        Response proceed(Request request) throws IOException;

        Request request();
    }

    Response intercept(Chain chain) throws IOException;
}
