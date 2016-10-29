package com.squareup.okhttp.v_1_5_1.internal.http;

/* compiled from: Twttr */
public final class Failure {
    private final Throwable exception;
    private final Request request;

    /* compiled from: Twttr */
    public class Builder {
        private Throwable exception;
        private Request request;

        public Builder request(Request request) {
            this.request = request;
            return this;
        }

        public Builder exception(Throwable th) {
            this.exception = th;
            return this;
        }

        public Failure build() {
            return new Failure();
        }
    }

    private Failure(Builder builder) {
        this.request = builder.request;
        this.exception = builder.exception;
    }

    public Request request() {
        return this.request;
    }

    public Throwable exception() {
        return this.exception;
    }
}
