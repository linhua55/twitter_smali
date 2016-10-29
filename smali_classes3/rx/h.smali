.class Lrx/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lrx/n;


# instance fields
.field final synthetic a:Ldly;

.field final synthetic b:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Ldly;)V
    .locals 0

    .prologue
    .line 1863
    iput-object p1, p0, Lrx/h;->b:Lrx/a;

    iput-object p2, p0, Lrx/h;->a:Ldly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lrx/h;->a:Ldly;

    invoke-virtual {v0}, Ldly;->R_()V

    .line 1867
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 1871
    sget-object v0, Lrx/a;->a:Ldlj;

    invoke-virtual {v0, p1}, Ldlj;->a(Ljava/lang/Throwable;)V

    .line 1872
    iget-object v0, p0, Lrx/h;->a:Ldly;

    invoke-virtual {v0}, Ldly;->R_()V

    .line 1873
    invoke-static {p1}, Lrx/a;->b(Ljava/lang/Throwable;)V

    .line 1874
    return-void
.end method

.method public a(Lrx/ap;)V
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Lrx/h;->a:Ldly;

    invoke-virtual {v0, p1}, Ldly;->a(Lrx/ap;)V

    .line 1879
    return-void
.end method
