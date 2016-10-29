package com.squareup.okhttp;

import okio.f;

/* compiled from: Twttr */
public final class FormEncodingBuilder {
    private static final MediaType CONTENT_TYPE;
    private final f content;

    public FormEncodingBuilder() {
        this.content = new f();
    }

    static {
        CONTENT_TYPE = MediaType.parse("application/x-www-form-urlencoded");
    }

    public FormEncodingBuilder add(String str, String str2) {
        if (this.content.a() > 0) {
            this.content.b(38);
        }
        HttpUrl.canonicalize(this.content, str, 0, str.length(), " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, true, true);
        this.content.b(61);
        HttpUrl.canonicalize(this.content, str2, 0, str2.length(), " \"':;<=>@[]^`{}|/\\?#&!$(),~", false, true, true);
        return this;
    }

    public FormEncodingBuilder addEncoded(String str, String str2) {
        if (this.content.a() > 0) {
            this.content.b(38);
        }
        HttpUrl.canonicalize(this.content, str, 0, str.length(), " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, true, true);
        this.content.b(61);
        HttpUrl.canonicalize(this.content, str2, 0, str2.length(), " \"':;<=>@[]^`{}|/\\?#&!$(),~", true, true, true);
        return this;
    }

    public RequestBody build() {
        return RequestBody.create(CONTENT_TYPE, this.content.w());
    }
}
