package tv.periscope.chatman;

import defpackage.dde;
import defpackage.ddf;
import defpackage.ddg;
import defpackage.ddj;
import java.net.ConnectException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.concurrent.TimeUnit;
import retrofit.RetrofitError;
import retrofit.RetrofitError$Kind;
import tv.periscope.chatman.api.ChatMessage;
import tv.periscope.chatman.api.HistoryRequest;
import tv.periscope.chatman.api.HistoryResponse;
import tv.periscope.chatman.api.HttpResponse;
import tv.periscope.chatman.api.WireMessage;
import tv.periscope.chatman.model.q;
import tv.periscope.chatman.model.r;
import tv.periscope.chatman.model.s;

/* compiled from: Twttr */
class d extends ddf<HttpResponse<HistoryResponse, RetrofitError>> {
    final /* synthetic */ a a;
    private final HistoryRequest b;

    protected /* synthetic */ boolean canRetry(Object obj) {
        return a((HttpResponse) obj);
    }

    protected /* synthetic */ Object execute() {
        return a();
    }

    protected /* synthetic */ void finish(Object obj) {
        d((HttpResponse) obj);
    }

    protected /* synthetic */ void noRetriesLeft(Object obj) {
        b((HttpResponse) obj);
    }

    protected /* synthetic */ void retry(Object obj) {
        c((HttpResponse) obj);
    }

    protected d(a aVar, int i, long j, long j2, HistoryRequest historyRequest) {
        this.a = aVar;
        super(i, j, j2);
        this.b = historyRequest;
    }

    protected HttpResponse<HistoryResponse, RetrofitError> a() {
        Object obj = null;
        if (this.a.a(this.b)) {
            Object history;
            try {
                history = this.a.e.history(this.b);
            } catch (RetrofitError e) {
                RetrofitError retrofitError = e;
                history = null;
                RetrofitError retrofitError2 = retrofitError;
            }
            return new HttpResponse(history, obj);
        }
        ddj.e("CM", "This history request is no longer in progress, returning early from execute");
        return new HttpResponse(null, null);
    }

    protected boolean a(HttpResponse<HistoryResponse, RetrofitError> httpResponse) {
        if (this.a.a(this.b)) {
            boolean z;
            if (httpResponse.errorResponse == null || !(a((RetrofitError) httpResponse.errorResponse) || b((RetrofitError) httpResponse.errorResponse))) {
                z = false;
            } else {
                z = true;
            }
            ddj.e("CM", "History call canRetry " + z);
            return z;
        }
        ddj.e("CM", "This history request is no longer in progress, returning early from canRetry");
        return false;
    }

    private boolean a(RetrofitError retrofitError) {
        if (retrofitError.getResponse() == null) {
            return false;
        }
        int status = retrofitError.getResponse().getStatus();
        if (status < 500 || status >= 600) {
            return false;
        }
        return true;
    }

    private boolean b(RetrofitError retrofitError) {
        Throwable cause = retrofitError.getCause();
        return retrofitError.getKind() == RetrofitError$Kind.NETWORK || (cause != null && ((cause instanceof UnknownHostException) || (cause instanceof ConnectException)));
    }

    protected void b(HttpResponse<HistoryResponse, RetrofitError> httpResponse) {
        if (!this.a.a(this.b)) {
            ddj.e("CM", "This history request is no longer in progress, returning early from noRetriesLeft");
        }
        ddj.e("CM", "History call failed with retry-able error but there are no retries left");
    }

    protected void c(HttpResponse<HistoryResponse, RetrofitError> httpResponse) {
        if (!this.a.a(this.b)) {
            ddj.e("CM", "This history request is no longer in progress, returning early from retry");
        }
        ddj.e("CM", "Retrying history call, scheduling to run in " + currentBackoff());
        a.a.schedule(this, currentBackoff(), TimeUnit.MILLISECONDS);
    }

    protected void d(HttpResponse<HistoryResponse, RetrofitError> httpResponse) {
        if (this.a.a(this.b)) {
            ddj.e("CM", "History call finished");
            if (httpResponse.successResponse != null) {
                HistoryResponse historyResponse = (HistoryResponse) httpResponse.successResponse;
                s b = r.e().a(this.b.since).a(this.b.cursor).b(historyResponse.cursor);
                if (historyResponse.messages != null) {
                    Collection arrayList = new ArrayList();
                    for (WireMessage wireMessage : historyResponse.messages) {
                        if (wireMessage.kind == 1) {
                            ChatMessage chatMessage = (ChatMessage) dde.a.a(wireMessage.payload, ChatMessage.class);
                            arrayList.add(q.a(chatMessage.room, chatMessage.body, chatMessage.sender, chatMessage.timestamp, dde.a.a(wireMessage)));
                        }
                    }
                    b.a(arrayList);
                }
                this.a.c.a(b.a(), ddg.b(historyResponse.cursor));
            }
            this.a.b(this.b);
            return;
        }
        ddj.e("CM", "This history request is no longer in progress, returning early from finish");
    }
}
