.class public Lxj;
.super Lwz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwz",
        "<",
        "Lcom/twitter/model/dms/eo;",
        "Lxu;",
        "Lxj;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lwz;-><init>()V

    return-void
.end method


# virtual methods
.method protected b()Lxh;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lxh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxh;-><init>(Lxj;Lxi;)V

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lxj;->b()Lxh;

    move-result-object v0

    return-object v0
.end method
