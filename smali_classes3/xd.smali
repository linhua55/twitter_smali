.class public Lxd;
.super Lwz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwz",
        "<",
        "Lcom/twitter/model/dms/s;",
        "Lxu;",
        "Lxd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lwz;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Lxb;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lxb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxb;-><init>(Lxd;Lxc;)V

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lxd;->b()Lxb;

    move-result-object v0

    return-object v0
.end method
