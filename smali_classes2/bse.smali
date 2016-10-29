.class public Lbse;
.super Lcom/twitter/library/service/o;
.source "Twttr"


# instance fields
.field final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Ljava/util/Collection;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/twitter/library/client/Session;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 24
    const-class v0, Lbse;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/twitter/library/service/o;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/twitter/library/client/Session;)V

    .line 25
    iput-object p3, p0, Lbse;->a:Ljava/util/Collection;

    .line 26
    iput p4, p0, Lbse;->b:I

    .line 27
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lbse;->b()Lcom/twitter/library/provider/b;

    move-result-object v0

    .line 44
    invoke-virtual {p0}, Lbse;->e()Lcom/twitter/library/provider/dm;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lbse;->a:Ljava/util/Collection;

    iget v3, p0, Lbse;->b:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/twitter/library/provider/dm;->a(Ljava/util/Collection;Lcom/twitter/library/provider/b;I)I

    .line 46
    invoke-virtual {v0}, Lcom/twitter/library/provider/b;->a()V

    .line 47
    return-void
.end method

.method b()Lcom/twitter/library/provider/b;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lbse;->t()Lcom/twitter/library/provider/b;

    move-result-object v0

    return-object v0
.end method

.method e()Lcom/twitter/library/provider/dm;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lbse;->s()Lcom/twitter/library/provider/dm;

    move-result-object v0

    return-object v0
.end method
