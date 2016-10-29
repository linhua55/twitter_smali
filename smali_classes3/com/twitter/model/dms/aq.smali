.class abstract Lcom/twitter/model/dms/aq;
.super Lcom/twitter/model/dms/j;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/ap;",
        "B:",
        "Lcom/twitter/model/dms/aq",
        "<TE;TB;>;>",
        "Lcom/twitter/model/dms/j",
        "<TE;TB;>;"
    }
.end annotation


# instance fields
.field private b:Lclw;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/twitter/model/dms/j;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/aq;)Lclw;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/model/dms/aq;->b:Lclw;

    return-object v0
.end method


# virtual methods
.method public a(Lclw;)Lcom/twitter/model/dms/aq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclw;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 91
    iput-object p1, p0, Lcom/twitter/model/dms/aq;->b:Lclw;

    .line 92
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/aq;

    return-object v0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/model/dms/aq;->b:Lclw;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
