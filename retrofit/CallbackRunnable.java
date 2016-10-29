package retrofit;

import java.util.concurrent.Executor;

/* compiled from: Twttr */
abstract class CallbackRunnable<T> implements Runnable {
    private final Callback<T> callback;
    private final Executor callbackExecutor;
    private final ErrorHandler errorHandler;

    /* compiled from: Twttr */
    /* renamed from: retrofit.CallbackRunnable.1 */
    class AnonymousClass1 implements Runnable {
        final /* synthetic */ ResponseWrapper val$wrapper;

        AnonymousClass1(ResponseWrapper responseWrapper) {
            this.val$wrapper = responseWrapper;
        }

        public void run() {
            CallbackRunnable.this.callback.success(this.val$wrapper.responseBody, this.val$wrapper.response);
        }
    }

    /* compiled from: Twttr */
    /* renamed from: retrofit.CallbackRunnable.2 */
    class AnonymousClass2 implements Runnable {
        final /* synthetic */ RetrofitError val$handled;

        AnonymousClass2(RetrofitError retrofitError) {
            this.val$handled = retrofitError;
        }

        public void run() {
            CallbackRunnable.this.callback.failure(this.val$handled);
        }
    }

    public abstract ResponseWrapper obtainResponse();

    CallbackRunnable(Callback<T> callback, Executor executor, ErrorHandler errorHandler) {
        this.callback = callback;
        this.callbackExecutor = executor;
        this.errorHandler = errorHandler;
    }

    public final void run() {
        try {
            this.callbackExecutor.execute(new AnonymousClass1(obtainResponse()));
        } catch (RetrofitError e) {
            RetrofitError e2 = e;
            Throwable handleError = this.errorHandler.handleError(e2);
            if (handleError != e2) {
                e2 = RetrofitError.unexpectedError(e2.getUrl(), handleError);
            }
            this.callbackExecutor.execute(new AnonymousClass2(e2));
        }
    }
}
