.class final Lcom/twitter/android/moments/data/o;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/util/object/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/util/object/c",
        "<",
        "Lcom/twitter/util/collection/ab",
        "<",
        "Ljava/lang/String;",
        ">;",
        "Lbpz;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/library/client/bk;

.field final synthetic c:Lcet;

.field final synthetic d:Lbqa;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/bk;Lcet;Lbqa;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/twitter/android/moments/data/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/twitter/android/moments/data/o;->b:Lcom/twitter/library/client/bk;

    iput-object p3, p0, Lcom/twitter/android/moments/data/o;->c:Lcet;

    iput-object p4, p0, Lcom/twitter/android/moments/data/o;->d:Lbqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/util/collection/ab;)Lbpz;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbpz;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lbpz;

    iget-object v1, p0, Lcom/twitter/android/moments/data/o;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/android/moments/data/o;->b:Lcom/twitter/library/client/bk;

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/moments/data/o;->c:Lcet;

    iget-object v4, p0, Lcom/twitter/android/moments/data/o;->d:Lbqa;

    const/4 v5, 0x0

    .line 38
    invoke-virtual {p1, v5}, Lcom/twitter/util/collection/ab;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lbpz;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcet;Lbqa;Ljava/lang/String;)V

    .line 37
    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    check-cast p1, Lcom/twitter/util/collection/ab;

    invoke-virtual {p0, p1}, Lcom/twitter/android/moments/data/o;->a(Lcom/twitter/util/collection/ab;)Lbpz;

    move-result-object v0

    return-object v0
.end method
