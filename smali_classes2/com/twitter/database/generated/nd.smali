.class final Lcom/twitter/database/generated/nd;
.super Lcom/twitter/database/internal/m;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/database/internal/m",
        "<",
        "Lbht;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/na;


# direct methods
.method public constructor <init>(Lcom/twitter/database/generated/na;Lcom/twitter/database/internal/f;)V
    .locals 0
    .annotation build Latx;
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/twitter/database/generated/nd;->a:Lcom/twitter/database/generated/na;

    .line 105
    invoke-direct {p0, p2}, Lcom/twitter/database/internal/m;-><init>(Lcom/twitter/database/internal/f;)V

    .line 106
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/twitter/database/model/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/twitter/database/model/j",
            "<",
            "Lbht;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    new-instance v1, Lcom/twitter/database/internal/a;

    new-instance v2, Lcom/twitter/database/generated/nc;

    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/twitter/database/generated/nc;-><init>(Landroid/database/Cursor;Lcom/twitter/database/generated/nb;)V

    check-cast p1, Landroid/database/Cursor;

    invoke-direct {v1, v2, p1}, Lcom/twitter/database/internal/a;-><init>(Ljava/lang/Object;Landroid/database/Cursor;)V

    return-object v1
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/twitter/database/generated/na;->g()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()Lcom/twitter/database/internal/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/twitter/database/internal/l;",
            ">()TT;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/twitter/database/generated/nd;->a:Lcom/twitter/database/generated/na;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/internal/l;

    return-object v0
.end method
