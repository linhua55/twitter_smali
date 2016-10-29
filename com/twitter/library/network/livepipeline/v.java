package com.twitter.library.network.livepipeline;

import android.content.Context;
import com.twitter.model.livepipeline.PipelineEventType;
import com.twitter.model.livepipeline.c;
import com.twitter.model.livepipeline.j;
import rx.o;

/* compiled from: Twttr */
public class v {
    private static v a;

    v() {
    }

    public static v a() {
        if (a == null) {
            a = new v();
        }
        return a;
    }

    public o<j> a(Context context, String str, CallbackContext callbackContext) {
        return (o) b.a(context).a(new z().a(PipelineEventType.d).a((Object) str).a(callbackContext).a());
    }

    public o<c> b(Context context, String str, CallbackContext callbackContext) {
        return (o) b.a(context).a(new z().a(PipelineEventType.e).a((Object) str).a(callbackContext).a());
    }

    public void a(Context context, String str) {
        b.a(context).a(new aj().a(str));
    }
}
