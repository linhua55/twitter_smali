.class public Lcom/twitter/android/moments/ui/maker/dv;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lrx/ap;

.field private final b:Lrx/ap;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/du;Lrx/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/moments/ui/maker/du;",
            "Lrx/o",
            "<",
            "Lcom/twitter/model/moments/maker/w;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/twitter/model/moments/maker/q;

    invoke-static {p2, v0}, Ldcn;->a(Lrx/o;Ljava/lang/Class;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/dw;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/maker/dw;-><init>(Lcom/twitter/android/moments/ui/maker/dv;Lcom/twitter/android/moments/ui/maker/du;)V

    .line 22
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/dv;->a:Lrx/ap;

    .line 28
    const-class v0, Lcom/twitter/model/moments/maker/MomentEditOperation;

    invoke-static {p2, v0}, Ldcn;->a(Lrx/o;Ljava/lang/Class;)Lrx/o;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/moments/ui/maker/dx;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/maker/dx;-><init>(Lcom/twitter/android/moments/ui/maker/dv;Lcom/twitter/android/moments/ui/maker/du;)V

    .line 29
    invoke-virtual {v0, v1}, Lrx/o;->b(Lrx/ao;)Lrx/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/dv;->b:Lrx/ap;

    .line 35
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dv;->a:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 39
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dv;->b:Lrx/ap;

    invoke-interface {v0}, Lrx/ap;->R_()V

    .line 40
    return-void
.end method
