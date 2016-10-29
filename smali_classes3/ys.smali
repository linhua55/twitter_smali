.class public Lys;
.super Lwz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwz",
        "<",
        "Lcom/twitter/model/dms/dw;",
        "Lxu;",
        "Lys;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lwz;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lys;->d()Lyq;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lyq;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lyq;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyq;-><init>(Lys;Lyr;)V

    return-object v0
.end method
