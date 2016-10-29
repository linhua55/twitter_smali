.class abstract Lcom/twitter/model/dms/dm;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/model/dms/Participant;",
        "B:",
        "Lcom/twitter/model/dms/dm",
        "<TT;TB;>;>",
        "Lcom/twitter/util/object/h",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/dms/dm;)J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/twitter/model/dms/dm;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/twitter/model/dms/dm;)J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/twitter/model/dms/dm;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/twitter/model/dms/dm;)J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/twitter/model/dms/dm;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/twitter/model/dms/dm;)J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/twitter/model/dms/dm;->d:J

    return-wide v0
.end method


# virtual methods
.method public a(J)Lcom/twitter/model/dms/dm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 155
    iput-wide p1, p0, Lcom/twitter/model/dms/dm;->a:J

    .line 156
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dm;

    return-object v0
.end method

.method public b(J)Lcom/twitter/model/dms/dm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 161
    iput-wide p1, p0, Lcom/twitter/model/dms/dm;->b:J

    .line 162
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dm;

    return-object v0
.end method

.method public bq_()Z
    .locals 4

    .prologue
    .line 179
    iget-wide v0, p0, Lcom/twitter/model/dms/dm;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(J)Lcom/twitter/model/dms/dm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 167
    iput-wide p1, p0, Lcom/twitter/model/dms/dm;->c:J

    .line 168
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dm;

    return-object v0
.end method

.method public d(J)Lcom/twitter/model/dms/dm;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 173
    iput-wide p1, p0, Lcom/twitter/model/dms/dm;->d:J

    .line 174
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/dms/dm;

    return-object v0
.end method
