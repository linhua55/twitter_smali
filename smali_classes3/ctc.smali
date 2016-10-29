.class public final Lctc;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lctb;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lctc;)J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lctc;->a:J

    return-wide v0
.end method

.method static synthetic b(Lctc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lctc;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lctc;)Ljava/util/List;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lctc;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lctc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lctc;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lctc;)J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lctc;->e:J

    return-wide v0
.end method

.method static synthetic f(Lctc;)J
    .locals 2

    .prologue
    .line 139
    iget-wide v0, p0, Lctc;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(J)Lctc;
    .locals 1

    .prologue
    .line 149
    iput-wide p1, p0, Lctc;->a:J

    .line 150
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lctc;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lctc;->b:Ljava/lang/String;

    .line 156
    return-object p0
.end method

.method public a(Ljava/util/List;)Lctc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Lctc;"
        }
    .end annotation

    .prologue
    .line 161
    iput-object p1, p0, Lctc;->c:Ljava/util/List;

    .line 162
    return-object p0
.end method

.method public b(J)Lctc;
    .locals 1

    .prologue
    .line 173
    iput-wide p1, p0, Lctc;->e:J

    .line 174
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lctc;
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lctc;->d:Ljava/lang/String;

    .line 168
    return-object p0
.end method

.method public bq_()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 185
    const-string/jumbo v1, "tweet"

    iget-object v2, p0, Lctc;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lctc;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/Collection;)I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-wide v2, p0, Lctc;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "carousel"

    iget-object v2, p0, Lctc;->b:Ljava/lang/String;

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lctc;->c:Ljava/util/List;

    invoke-static {v1}, Lcom/twitter/util/collection/CollectionUtils;->c(Ljava/util/Collection;)I

    move-result v1

    if-lez v1, :cond_2

    .line 185
    :cond_1
    :goto_0
    return v0

    .line 186
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(J)Lctc;
    .locals 1

    .prologue
    .line 179
    iput-wide p1, p0, Lctc;->f:J

    .line 180
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lctc;->e()Lctb;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lctb;
    .locals 1

    .prologue
    .line 192
    new-instance v0, Lctb;

    invoke-direct {v0, p0}, Lctb;-><init>(Lctc;)V

    return-object v0
.end method
