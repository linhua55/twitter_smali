.class final Lcom/twitter/database/generated/ke;
.super Lcom/twitter/database/internal/m;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/database/internal/m",
        "<",
        "Lbgn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/kb;


# direct methods
.method public constructor <init>(Lcom/twitter/database/generated/kb;Lcom/twitter/database/internal/f;)V
    .locals 0
    .annotation build Latx;
    .end annotation

    .prologue
    .line 109
    iput-object p1, p0, Lcom/twitter/database/generated/ke;->a:Lcom/twitter/database/generated/kb;

    .line 110
    invoke-direct {p0, p2}, Lcom/twitter/database/internal/m;-><init>(Lcom/twitter/database/internal/f;)V

    .line 111
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
            "Lbgn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Lcom/twitter/database/internal/a;

    new-instance v2, Lcom/twitter/database/generated/kd;

    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/twitter/database/generated/kd;-><init>(Landroid/database/Cursor;Lcom/twitter/database/generated/kc;)V

    check-cast p1, Landroid/database/Cursor;

    invoke-direct {v1, v2, p1}, Lcom/twitter/database/internal/a;-><init>(Ljava/lang/Object;Landroid/database/Cursor;)V

    return-object v1
.end method

.method public final a()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/twitter/database/generated/kb;->g()[Ljava/lang/String;

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
    .line 122
    iget-object v0, p0, Lcom/twitter/database/generated/ke;->a:Lcom/twitter/database/generated/kb;

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/database/internal/l;

    return-object v0
.end method
