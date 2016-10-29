.class public Lcom/twitter/library/api/moments/maker/e;
.super Lbab;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Config::",
        "Lcom/twitter/library/api/moments/maker/d",
        "<TRes;TErr;>;Res:",
        "Ljava/lang/Object;",
        "Err:",
        "Ljava/lang/Object;",
        ">",
        "Lbab",
        "<TConfig;",
        "Lcom/twitter/util/collection/ab",
        "<TRes;>;",
        "Lcom/twitter/library/api/moments/maker/c",
        "<TConfig;TRes;TErr;>;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lbab;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/twitter/library/api/moments/maker/e;->a:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/twitter/library/api/moments/maker/e;->b:Lcom/twitter/library/client/Session;

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Lcom/twitter/library/api/moments/maker/d;)Lcom/twitter/library/api/moments/maker/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TConfig;)",
            "Lcom/twitter/library/api/moments/maker/c",
            "<TConfig;TRes;TErr;>;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Lcom/twitter/library/api/moments/maker/c;

    iget-object v2, p0, Lcom/twitter/library/api/moments/maker/e;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/twitter/library/api/moments/maker/e;->b:Lcom/twitter/library/client/Session;

    invoke-static {p1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/moments/maker/d;

    invoke-direct {v1, v2, v3, v0}, Lcom/twitter/library/api/moments/maker/c;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/library/api/moments/maker/d;)V

    return-object v1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)Lcom/twitter/library/service/x;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/twitter/library/api/moments/maker/d;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/moments/maker/e;->a(Lcom/twitter/library/api/moments/maker/d;)Lcom/twitter/library/api/moments/maker/c;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/twitter/library/api/moments/maker/c;)Lcom/twitter/util/collection/ab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/api/moments/maker/c",
            "<TConfig;TRes;TErr;>;)",
            "Lcom/twitter/util/collection/ab",
            "<TRes;>;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/twitter/library/api/moments/maker/c;->g()Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/twitter/library/service/x;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/twitter/library/api/moments/maker/c;

    invoke-virtual {p0, p1}, Lcom/twitter/library/api/moments/maker/e;->a(Lcom/twitter/library/api/moments/maker/c;)Lcom/twitter/util/collection/ab;

    move-result-object v0

    return-object v0
.end method
