.class final Lcuj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Lcom/twitter/model/core/MediaEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/MediaEntity;)Z
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcug;->a()Ldau;

    move-result-object v0

    invoke-interface {v0, p1}, Ldau;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcug;->b()Ldau;

    move-result-object v0

    invoke-interface {v0, p1}, Ldau;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 79
    check-cast p1, Lcom/twitter/model/core/MediaEntity;

    invoke-virtual {p0, p1}, Lcuj;->a(Lcom/twitter/model/core/MediaEntity;)Z

    move-result v0

    return v0
.end method
