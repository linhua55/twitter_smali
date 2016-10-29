.class final Lrx/internal/util/t;
.super Lrx/internal/util/l;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/internal/util/l",
        "<",
        "Ljava/util/Queue",
        "<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lrx/internal/util/l;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0}, Lrx/internal/util/t;->e()Ldkk;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ldkk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldkk",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 284
    new-instance v0, Ldkk;

    sget v1, Lrx/internal/util/s;->c:I

    invoke-direct {v0, v1}, Ldkk;-><init>(I)V

    return-object v0
.end method
