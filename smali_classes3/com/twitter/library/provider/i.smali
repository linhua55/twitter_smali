.class public abstract Lcom/twitter/library/provider/i;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/twitter/library/provider/h;",
        "B:",
        "Lcom/twitter/library/provider/i",
        "<TS;TB;>;>",
        "Lcom/twitter/util/object/h",
        "<TS;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/twitter/library/database/dm/ShareHistoryTable$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/library/provider/i;)Lcom/twitter/library/database/dm/ShareHistoryTable$Type;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/twitter/library/provider/i;->a:Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    return-object v0
.end method


# virtual methods
.method protected L_()V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/twitter/util/object/h;->L_()V

    .line 74
    iget-object v0, p0, Lcom/twitter/library/provider/i;->a:Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/twitter/library/database/dm/ShareHistoryTable$Type;->d:Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    iput-object v0, p0, Lcom/twitter/library/provider/i;->a:Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    .line 77
    :cond_0
    return-void
.end method

.method public a(Lcom/twitter/library/database/dm/ShareHistoryTable$Type;)Lcom/twitter/library/provider/i;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/database/dm/ShareHistoryTable$Type;",
            ")",
            "Lcom/twitter/library/provider/i",
            "<TS;TB;>;"
        }
    .end annotation

    .prologue
    .line 67
    iput-object p1, p0, Lcom/twitter/library/provider/i;->a:Lcom/twitter/library/database/dm/ShareHistoryTable$Type;

    .line 68
    return-object p0
.end method
