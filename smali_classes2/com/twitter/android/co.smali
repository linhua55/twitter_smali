.class Lcom/twitter/android/co;
.super Lcmv;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmv",
        "<",
        "Lcom/twitter/util/collection/ac",
        "<",
        "Ljava/lang/Long;",
        "Lclj;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/DMConversationFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/DMConversationFragment;)V
    .locals 0

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/twitter/android/co;->a:Lcom/twitter/android/DMConversationFragment;

    invoke-direct {p0}, Lcmv;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;)Lcom/twitter/util/collection/ac;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Lcom/twitter/util/collection/ac",
            "<",
            "Ljava/lang/Long;",
            "Lclj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1476
    const-string/jumbo v0, "card_id"

    .line 1477
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1478
    const-string/jumbo v0, "card_state"

    .line 1480
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1479
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lclj;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclj;

    .line 1483
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lcom/twitter/util/collection/ac;->b(Ljava/lang/Object;Ljava/lang/Object;)Lcom/twitter/util/collection/ac;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lclj;

    invoke-direct {v0}, Lclj;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1472
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/twitter/android/co;->a(Landroid/database/Cursor;)Lcom/twitter/util/collection/ac;

    move-result-object v0

    return-object v0
.end method
