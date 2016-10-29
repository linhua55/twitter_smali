package rx;

import cyr;
import cyt;
import cyx;
import cyy;
import cyz;
import dag;
import dai;
import dam;
import dav;
import dax;
import defpackage.cys;
import defpackage.cyw;
import defpackage.dbd;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import rx.exceptions.OnErrorFailedException;
import rx.internal.operators.CachedObservable;
import rx.internal.operators.EmptyObservableHolder;
import rx.internal.operators.NeverObservableHolder;
import rx.internal.operators.OnSubscribeCombineLatest;
import rx.internal.operators.OnSubscribeFromArray;
import rx.internal.operators.OnSubscribeFromIterable;
import rx.internal.operators.OperatorEagerConcatMap;
import rx.internal.operators.OperatorMerge;
import rx.internal.operators.OperatorPublish;
import rx.internal.operators.OperatorReplay;
import rx.internal.operators.OperatorZip;
import rx.internal.operators.ab;
import rx.internal.operators.ad;
import rx.internal.operators.ah;
import rx.internal.operators.am;
import rx.internal.operators.ao;
import rx.internal.operators.ar;
import rx.internal.operators.at;
import rx.internal.operators.au;
import rx.internal.operators.ay;
import rx.internal.operators.ba;
import rx.internal.operators.bd;
import rx.internal.operators.bj;
import rx.internal.operators.bm;
import rx.internal.operators.cc;
import rx.internal.operators.ch;
import rx.internal.operators.ck;
import rx.internal.operators.cp;
import rx.internal.operators.cw;
import rx.internal.operators.cz;
import rx.internal.operators.dc;
import rx.internal.operators.dg;
import rx.internal.operators.dj;
import rx.internal.operators.dl;
import rx.internal.operators.e;
import rx.internal.operators.j;
import rx.internal.operators.k;
import rx.internal.operators.q;
import rx.internal.operators.s;
import rx.internal.operators.t;
import rx.internal.operators.x;
import rx.internal.util.InternalObservableUtils;
import rx.internal.util.ScalarSynchronousObservable;
import rx.internal.util.UtilityFunctions;
import rx.internal.util.a;
import rx.internal.util.n;

/* compiled from: Twttr */
public class o<T> {
    static final dav b;
    final p<T> a;

    protected o(p<T> pVar) {
        this.a = pVar;
    }

    static {
        b = dax.a().c();
    }

    public static <T> o<T> a(p<T> pVar) {
        return new o(b.a(pVar));
    }

    public final <R> o<R> a(q<? extends R, ? super T> qVar) {
        return new o(new k(this.a, qVar));
    }

    public w<T> b() {
        return new w(q.a(this));
    }

    public static <T1, T2, R> o<R> a(o<? extends T1> oVar, o<? extends T2> oVar2, cyx<? super T1, ? super T2, ? extends R> cyx__super_T1___super_T2___extends_R) {
        return a(Arrays.asList(new o[]{oVar, oVar2}), cyz.a(cyx__super_T1___super_T2___extends_R));
    }

    public static <T, R> o<R> a(List<? extends o<? extends T>> list, cyy<? extends R> cyy__extends_R) {
        return a(new OnSubscribeCombineLatest(list, cyy__extends_R));
    }

    public static <T> o<T> a(o<? extends o<? extends T>> oVar) {
        return oVar.a(UtilityFunctions.b());
    }

    public static <T> o<T> a(o<? extends T> oVar, o<? extends T> oVar2) {
        return a(a((Object) oVar, (Object) oVar2));
    }

    public static <T> o<T> c() {
        return EmptyObservableHolder.a();
    }

    public static <T> o<T> b(Throwable th) {
        return a(new s(th));
    }

    public static <T> o<T> a(Iterable<? extends T> iterable) {
        return a(new OnSubscribeFromIterable(iterable));
    }

    public static <T> o<T> a(T[] tArr) {
        int length = tArr.length;
        if (length == 0) {
            return c();
        }
        if (length == 1) {
            return b(tArr[0]);
        }
        return a(new OnSubscribeFromArray(tArr));
    }

    public static <T> o<T> a(Callable<? extends T> callable) {
        return a(new j(callable));
    }

    public static o<Long> a(long j, TimeUnit timeUnit, t tVar) {
        return a(j, j, timeUnit, tVar);
    }

    public static o<Long> a(long j, long j2, TimeUnit timeUnit, t tVar) {
        return a(new t(j, j2, timeUnit, tVar));
    }

    public static <T> o<T> b(T t) {
        return ScalarSynchronousObservable.a(t);
    }

    public static <T> o<T> a(T t, T t2) {
        return a(new Object[]{t, t2});
    }

    public static <T> o<T> b(o<? extends o<? extends T>> oVar) {
        if (oVar.getClass() == ScalarSynchronousObservable.class) {
            return ((ScalarSynchronousObservable) oVar).l(UtilityFunctions.b());
        }
        return oVar.a(OperatorMerge.a(false));
    }

    public static <T> o<T> b(o<? extends T> oVar, o<? extends T> oVar2) {
        return a(new o[]{oVar, oVar2});
    }

    public static <T> o<T> a(o<? extends T>[] oVarArr) {
        return b(a((Object[]) oVarArr));
    }

    public static <T> o<T> d() {
        return NeverObservableHolder.a();
    }

    public static <T> o<T> c(o<? extends o<? extends T>> oVar) {
        return oVar.a(cp.a(false));
    }

    public static <R> o<R> a(Iterable<? extends o<?>> iterable, cyy<? extends R> cyy__extends_R) {
        List arrayList = new ArrayList();
        for (o add : iterable) {
            arrayList.add(add);
        }
        return b(arrayList.toArray(new o[arrayList.size()])).a(new OperatorZip(cyy__extends_R));
    }

    public static <T1, T2, R> o<R> b(o<? extends T1> oVar, o<? extends T2> oVar2, cyx<? super T1, ? super T2, ? extends R> cyx__super_T1___super_T2___extends_R) {
        return b(new o[]{oVar, oVar2}).a(new OperatorZip(cyx__super_T1___super_T2___extends_R));
    }

    public final <B> o<List<T>> a(o<B> oVar, int i) {
        return a(new x(oVar, i));
    }

    public final o<T> e() {
        return CachedObservable.i(this);
    }

    @Deprecated
    public final o<T> a(int i) {
        return b(i);
    }

    public final o<T> b(int i) {
        return CachedObservable.b(this, i);
    }

    public final <R> o<R> a(Class<R> cls) {
        return a(new ab(cls));
    }

    public final <R> o<R> a(cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R) {
        if (this instanceof ScalarSynchronousObservable) {
            return ((ScalarSynchronousObservable) this).l(cyw__super_T___extends_rx_o__extends_R);
        }
        return a(new e(this, cyw__super_T___extends_rx_o__extends_R, 2, 0));
    }

    public final o<T> d(o<? extends T> oVar) {
        return a(this, (o) oVar);
    }

    public final o<Integer> f() {
        return a(Integer.valueOf(0), InternalObservableUtils.a);
    }

    public final o<T> a(long j, TimeUnit timeUnit) {
        return b(j, timeUnit, dbd.c());
    }

    public final o<T> b(long j, TimeUnit timeUnit, t tVar) {
        return a(new ad(j, timeUnit, tVar));
    }

    public final o<T> b(long j, TimeUnit timeUnit) {
        return c(j, timeUnit, dbd.c());
    }

    public final o<T> c(long j, TimeUnit timeUnit, t tVar) {
        return a(new ah(j, timeUnit, tVar));
    }

    public final <U> o<T> b(cyw<? super T, ? extends U> cyw__super_T___extends_U) {
        return a(new am(cyw__super_T___extends_U));
    }

    public final o<T> g() {
        return a(ao.a());
    }

    public final o<T> a(cys<? super T> cys__super_T) {
        return a(new ar(new a(cys__super_T, cyt.a(), cyt.a())));
    }

    public final o<T> a(cyr cyr) {
        return a(new at(cyr));
    }

    public final o<T> b(cyr cyr) {
        return a(new au(cyr));
    }

    public final <R> o<R> c(cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R) {
        return a((cyw) cyw__super_T___extends_rx_o__extends_R, rx.internal.util.s.c);
    }

    public final <R> o<R> a(cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R, int i) {
        if (i >= 1) {
            return a(new OperatorEagerConcatMap(cyw__super_T___extends_rx_o__extends_R, i, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED));
        }
        throw new IllegalArgumentException("capacityHint > 0 required but it was " + i);
    }

    public final o<T> d(cyw<? super T, Boolean> cyw__super_T__java_lang_Boolean) {
        return a(new ay(cyw__super_T__java_lang_Boolean));
    }

    public final o<T> h() {
        return d(1).m();
    }

    public final o<T> e(cyw<? super T, Boolean> cyw__super_T__java_lang_Boolean) {
        return k(cyw__super_T__java_lang_Boolean).m();
    }

    public final <R> o<R> f(cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R) {
        if (getClass() == ScalarSynchronousObservable.class) {
            return ((ScalarSynchronousObservable) this).l(cyw__super_T___extends_rx_o__extends_R);
        }
        return b(g((cyw) cyw__super_T___extends_rx_o__extends_R));
    }

    public final void b(cys<? super T> cys__super_T) {
        c((cys) cys__super_T);
    }

    public final o<T> i() {
        return a(ba.a());
    }

    public final o<T> j() {
        return e(1).m();
    }

    public final <R> o<R> g(cyw<? super T, ? extends R> cyw__super_T___extends_R) {
        return a(new bd(cyw__super_T___extends_R));
    }

    public final o<T> e(o<? extends T> oVar) {
        return b(this, (o) oVar);
    }

    public final o<T> a(t tVar) {
        return a(tVar, rx.internal.util.s.c);
    }

    public final o<T> a(t tVar, int i) {
        return a(tVar, false, i);
    }

    public final o<T> a(t tVar, boolean z, int i) {
        if (this instanceof ScalarSynchronousObservable) {
            return ((ScalarSynchronousObservable) this).c(tVar);
        }
        return a(new bj(tVar, z, i));
    }

    public final <R> o<R> b(Class<R> cls) {
        return d(InternalObservableUtils.a(cls)).a((Class) cls);
    }

    public final o<T> f(o<? extends T> oVar) {
        return a(bm.a(oVar));
    }

    public final o<T> h(cyw<Throwable, ? extends T> cyw_java_lang_Throwable___extends_T) {
        return a(bm.a(cyw_java_lang_Throwable___extends_T));
    }

    public final dai<T> k() {
        return OperatorPublish.i(this);
    }

    public final <R> o<R> i(cyw<? super o<T>, ? extends o<R>> cyw__super_rx_o_T___extends_rx_o_R) {
        return OperatorPublish.a(this, cyw__super_rx_o_T___extends_rx_o_R);
    }

    public final o<T> a(cyx<T, T, T> cyx_T__T__T) {
        return b((cyx) cyx_T__T__T).j();
    }

    public final <R> o<R> a(R r, cyx<R, ? super T, R> cyx_R___super_T__R) {
        return b((Object) r, (cyx) cyx_R___super_T__R).e(1);
    }

    public final dai<T> c(int i) {
        return OperatorReplay.b(this, i);
    }

    public final o<T> b(cyx<T, T, T> cyx_T__T__T) {
        return a(new cc(cyx_T__T__T));
    }

    public final <R> o<R> b(R r, cyx<R, ? super T, R> cyx_R___super_T__R) {
        return a(new cc(r, cyx_R___super_T__R));
    }

    public final o<T> l() {
        return k().q();
    }

    public final o<T> m() {
        return a(ch.a());
    }

    public final o<T> c(T t) {
        return a(new ch(t));
    }

    public final o<T> g(o<T> oVar) {
        return a((o) oVar, this);
    }

    public final o<T> d(T t) {
        return a(b((Object) t), this);
    }

    public final an n() {
        return b(new a(cyt.a(), InternalObservableUtils.g, cyt.a()));
    }

    public final an c(cys<? super T> cys__super_T) {
        if (cys__super_T != null) {
            return b(new a(cys__super_T, InternalObservableUtils.g, cyt.a()));
        }
        throw new IllegalArgumentException("onNext can not be null");
    }

    public final an a(cys<? super T> cys__super_T, cys<Throwable> cys_java_lang_Throwable) {
        if (cys__super_T == null) {
            throw new IllegalArgumentException("onNext can not be null");
        } else if (cys_java_lang_Throwable != null) {
            return b(new a(cys__super_T, cys_java_lang_Throwable, cyt.a()));
        } else {
            throw new IllegalArgumentException("onError can not be null");
        }
    }

    public final an a(r<? super T> rVar) {
        if (rVar instanceof am) {
            return b((am) rVar);
        }
        return b(new n(rVar));
    }

    public final an a(am<? super T> amVar) {
        try {
            amVar.c();
            b.a(this, this.a).call(amVar);
            return b.a(amVar);
        } catch (Throwable th) {
            rx.exceptions.e.a(th);
            b.a(new RuntimeException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th));
        }
    }

    public final an b(am<? super T> amVar) {
        return a((am) amVar, this);
    }

    static <T> an a(am<? super T> amVar, o<T> oVar) {
        if (amVar == null) {
            throw new IllegalArgumentException("subscriber can not be null");
        } else if (oVar.a == null) {
            throw new IllegalStateException("onSubscribe function can not be null.");
        } else {
            amVar.c();
            if (!(amVar instanceof dam)) {
                amVar = new dam(amVar);
            }
            try {
                b.a(oVar, oVar.a).call(amVar);
                return b.a(amVar);
            } catch (Throwable th) {
                rx.exceptions.e.a(th);
                b.a(new OnErrorFailedException("Error occurred attempting to subscribe [" + th.getMessage() + "] and then again while trying to pass to onError.", th));
            }
        }
    }

    public final o<T> b(t tVar) {
        if (this instanceof ScalarSynchronousObservable) {
            return ((ScalarSynchronousObservable) this).c(tVar);
        }
        return a(new ck(this, tVar));
    }

    public final <R> o<R> j(cyw<? super T, ? extends o<? extends R>> cyw__super_T___extends_rx_o__extends_R) {
        return c(g((cyw) cyw__super_T___extends_rx_o__extends_R));
    }

    public final o<T> d(int i) {
        return a(new cw(i));
    }

    public final o<T> k(cyw<? super T, Boolean> cyw__super_T__java_lang_Boolean) {
        return d((cyw) cyw__super_T__java_lang_Boolean).d(1);
    }

    public final o<T> e(int i) {
        if (i == 0) {
            return i();
        }
        if (i == 1) {
            return a(dc.a());
        }
        return a(new cz(i));
    }

    public final <E> o<T> h(o<? extends E> oVar) {
        return a(new dg(oVar));
    }

    public final o<T> c(long j, TimeUnit timeUnit) {
        return d(j, timeUnit, dbd.c());
    }

    public final o<T> d(long j, TimeUnit timeUnit, t tVar) {
        return a(new dj(j, timeUnit, tVar));
    }

    public final dag<T> o() {
        return dag.a(this);
    }

    public final o<List<T>> p() {
        return a(dl.a());
    }
}
