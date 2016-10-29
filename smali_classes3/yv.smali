.class public Lyv;
.super Lwz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwz",
        "<",
        "Lcom/twitter/model/dms/ea;",
        "Lxu;",
        "Lyv;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lwz;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lyv;->d()Lyt;

    move-result-object v0

    return-object v0
.end method

.method protected d()Lyt;
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lyt;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyt;-><init>(Lyv;Lyu;)V

    return-object v0
.end method
