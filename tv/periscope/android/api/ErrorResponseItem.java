package tv.periscope.android.api;

import defpackage.op;

/* compiled from: Twttr */
public class ErrorResponseItem extends PsResponse {
    @op(a = "code")
    public int code;
    @op(a = "message")
    public String message;
    @op(a = "reason")
    public int reason;
    @op(a = "rectify_url")
    public String rectifyUrl;
}
