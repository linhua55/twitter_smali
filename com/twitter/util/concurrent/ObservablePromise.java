package com.twitter.util.concurrent;

/* compiled from: Twttr */
public class ObservablePromise<V> extends l<V> implements j<V> {
    private final CallbackList<Void> a;
    private final CallbackList<V> b;
    private final CallbackList<Exception> c;
    private final CallbackList<Void> d;

    public ObservablePromise() {
        this.a = new CallbackList(null);
        this.b = new CallbackList(null);
        this.c = new CallbackList(null);
        this.d = new CallbackList(null);
    }

    public static <V> ObservablePromise<V> a(V v) {
        ObservablePromise<V> observablePromise = new ObservablePromise();
        observablePromise.set(v);
        return observablePromise;
    }

    public static <V> ObservablePromise<V> a(Exception exception) {
        ObservablePromise<V> observablePromise = new ObservablePromise();
        observablePromise.setException(exception);
        return observablePromise;
    }

    public static <V> ObservablePromise<V> b() {
        ObservablePromise<V> observablePromise = new ObservablePromise();
        observablePromise.e();
        return observablePromise;
    }

    public j<V> a(e<Void> eVar) {
        this.a.a(eVar);
        return this;
    }

    public j<V> b(e<V> eVar) {
        this.b.a(eVar);
        return this;
    }

    public j<V> c(e<Exception> eVar) {
        this.c.a(eVar);
        return this;
    }

    public j<V> d(e<Void> eVar) {
        this.d.a(eVar);
        return this;
    }

    protected void c() {
        this.a.a(null);
    }

    protected void b(V v) {
        this.b.a(v);
        this.c.a();
        this.d.a();
    }

    protected void b(Exception exception) {
        this.b.a();
        this.c.a(exception);
        this.d.a();
    }

    protected void bi_() {
        this.b.a();
        this.c.a();
        this.d.a(null);
    }
}
