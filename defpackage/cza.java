package defpackage;

/* compiled from: Twttr */
/* renamed from: cza */
final class cza implements cyy<R> {
    final /* synthetic */ cyx a;

    cza(cyx cyx) {
        this.a = cyx;
    }

    public R b(Object... objArr) {
        if (objArr.length == 2) {
            return this.a.a(objArr[0], objArr[1]);
        }
        throw new RuntimeException("Func2 expecting 2 arguments.");
    }
}
