.class public abstract Lcom/twitter/model/dms/ay;
.super Lcom/twitter/model/dms/aq;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/twitter/model/dms/ax;",
        "B:",
        "Lcom/twitter/model/dms/ay",
        "<TE;TB;>;>",
        "Lcom/twitter/model/dms/aq",
        "<TE;TB;>;"
    }
.end annotation


# instance fields
.field private b:J

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/twitter/model/dms/aq;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/ay;)J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/twitter/model/dms/ay;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/twitter/model/dms/ay;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/twitter/model/dms/ay;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public synthetic a(Lclw;)Lcom/twitter/model/dms/aq;
    .locals 1

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/twitter/model/dms/ay;->b(Lclw;)Lcom/twitter/model/dms/ay;

    move-result-object v0

    return-object v0
.end method

.method public b(Lclw;)Lcom/twitter/model/dms/ay;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclw;",
            ")TB;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-super {p0, p1}, Lcom/twitter/model/dms/aq;->a(Lclw;)Lcom/twitter/model/dms/aq;

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string/jumbo v0, "feedback_id"

    invoke-virtual {p1, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    const-string/jumbo v0, "display_name"

    invoke-virtual {p1, v0}, Lclw;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/twitter/util/aj;->a(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/twitter/model/dms/ay;->b:J

    .line 69
    iput-object v0, p0, Lcom/twitter/model/dms/ay;->c:Ljava/lang/String;

    .line 70
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/ay;

    return-object v0

    :cond_0
    move-object v1, v0

    .line 65
    goto :goto_0
.end method

.method public bq_()Z
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Lcom/twitter/model/dms/aq;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/twitter/model/dms/ay;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
