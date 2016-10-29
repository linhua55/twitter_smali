.class public Lazh;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:J

.field private b:Z

.field private final c:J


# direct methods
.method constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iput-wide p1, p0, Lazh;->c:J

    .line 208
    iput-wide p3, p0, Lazh;->a:J

    .line 209
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    .prologue
    .line 222
    if-eqz p1, :cond_0

    .line 223
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lazh;->a:J

    .line 225
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lazh;->b:Z

    .line 226
    return-void
.end method

.method public a()Z
    .locals 4

    .prologue
    .line 212
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v0

    .line 213
    iget-wide v2, p0, Lazh;->a:J

    sub-long/2addr v0, v2

    .line 214
    iget-wide v2, p0, Lazh;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lazh;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput-boolean v0, p0, Lazh;->b:Z

    .line 219
    return-void
.end method
