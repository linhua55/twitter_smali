.class public final Lcom/twitter/database/generated/ba;
.super Lcom/twitter/database/internal/n;
.source "Twttr"

# interfaces
.implements Lbch;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/database/internal/n",
        "<",
        "Lbci;",
        ">;",
        "Lbch;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/twitter/database/internal/f;)V
    .locals 0
    .annotation build Latx;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/twitter/database/internal/n;-><init>(Lcom/twitter/database/internal/f;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a()Lcom/twitter/database/internal/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/database/internal/o;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/database/generated/ba;->a:Lcom/twitter/database/internal/f;

    const-class v1, Lbcd;

    invoke-virtual {v0, v1}, Lcom/twitter/database/internal/f;->a(Ljava/lang/Class;)Lcom/twitter/database/model/p;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/internal/o;

    return-object v0
.end method

.method public final b()Lcom/twitter/database/model/k;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/database/model/k",
            "<",
            "Lbci;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 34
    new-instance v1, Lcom/twitter/database/internal/b;

    new-instance v2, Lcom/twitter/database/generated/bb;

    invoke-direct {v2, v0}, Lcom/twitter/database/generated/bb;-><init>(Landroid/content/ContentValues;)V

    invoke-virtual {p0}, Lcom/twitter/database/generated/ba;->a()Lcom/twitter/database/internal/o;

    move-result-object v3

    iget-object v4, p0, Lcom/twitter/database/generated/ba;->a:Lcom/twitter/database/internal/f;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/twitter/database/internal/b;-><init>(Landroid/content/ContentValues;Ljava/lang/Object;Lcom/twitter/database/internal/l;Lcom/twitter/database/internal/f;)V

    return-object v1
.end method
