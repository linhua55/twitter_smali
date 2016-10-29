package retrofit;

import defpackage.dbl;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import rx.am;
import rx.o;
import rx.p;

/* compiled from: Twttr */
final class RxSupport {
    private final ErrorHandler errorHandler;
    private final Executor executor;
    private final RequestInterceptor requestInterceptor;

    /* compiled from: Twttr */
    interface Invoker {
        ResponseWrapper invoke(RequestInterceptor requestInterceptor);
    }

    /* compiled from: Twttr */
    /* renamed from: retrofit.RxSupport.1 */
    class AnonymousClass1 implements p<Object> {
        final /* synthetic */ Invoker val$invoker;

        AnonymousClass1(Invoker invoker) {
            this.val$invoker = invoker;
        }

        public void call(am<? super Object> amVar) {
            Object requestInterceptorTape = new RequestInterceptorTape();
            RxSupport.this.requestInterceptor.intercept(requestInterceptorTape);
            Future futureTask = new FutureTask(RxSupport.this.getRunnable(amVar, this.val$invoker, requestInterceptorTape), null);
            amVar.a(dbl.a(futureTask));
            RxSupport.this.executor.execute(futureTask);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: retrofit.RxSupport.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ RequestInterceptorTape val$interceptorTape;
        final /* synthetic */ Invoker val$invoker;
        final /* synthetic */ am val$subscriber;

        AnonymousClass2(am amVar, Invoker invoker, RequestInterceptorTape requestInterceptorTape) {
            this.val$subscriber = amVar;
            this.val$invoker = invoker;
            this.val$interceptorTape = requestInterceptorTape;
        }

        public void run() {
            try {
                if (!this.val$subscriber.b()) {
                    this.val$subscriber.b_(this.val$invoker.invoke(this.val$interceptorTape).responseBody);
                    this.val$subscriber.bs_();
                }
            } catch (RetrofitError e) {
                this.val$subscriber.a(RxSupport.this.errorHandler.handleError(e));
            }
        }
    }

    RxSupport(Executor executor, ErrorHandler errorHandler, RequestInterceptor requestInterceptor) {
        this.executor = executor;
        this.errorHandler = errorHandler;
        this.requestInterceptor = requestInterceptor;
    }

    o createRequestObservable(Invoker invoker) {
        return o.a(new AnonymousClass1(invoker));
    }

    private Runnable getRunnable(am<? super Object> amVar, Invoker invoker, RequestInterceptorTape requestInterceptorTape) {
        return new AnonymousClass2(amVar, invoker, requestInterceptorTape);
    }
}
