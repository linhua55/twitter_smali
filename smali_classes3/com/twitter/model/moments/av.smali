.class public Lcom/twitter/model/moments/av;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lcom/twitter/model/moments/at;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/ay;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/twitter/model/moments/aw;

.field private c:Lcom/twitter/model/timeline/l;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/timeline/al;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/model/moments/av;)Ljava/util/List;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/twitter/model/moments/av;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/model/moments/av;)Lcom/twitter/model/moments/aw;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/twitter/model/moments/av;->b:Lcom/twitter/model/moments/aw;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/model/moments/av;)Lcom/twitter/model/timeline/l;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/twitter/model/moments/av;->c:Lcom/twitter/model/timeline/l;

    return-object v0
.end method

.method static synthetic d(Lcom/twitter/model/moments/av;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/twitter/model/moments/av;->d:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic e(Lcom/twitter/model/moments/av;)J
    .locals 2

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/twitter/model/moments/av;->e:J

    return-wide v0
.end method


# virtual methods
.method public a(J)Lcom/twitter/model/moments/av;
    .locals 1

    .prologue
    .line 220
    iput-wide p1, p0, Lcom/twitter/model/moments/av;->e:J

    .line 221
    return-object p0
.end method

.method public a(Lcom/twitter/model/moments/aw;)Lcom/twitter/model/moments/av;
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/twitter/model/moments/av;->b:Lcom/twitter/model/moments/aw;

    .line 197
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/l;)Lcom/twitter/model/moments/av;
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/twitter/model/moments/av;->c:Lcom/twitter/model/timeline/l;

    .line 209
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/moments/av;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/ay;",
            ">;)",
            "Lcom/twitter/model/moments/av;"
        }
    .end annotation

    .prologue
    .line 202
    iput-object p1, p0, Lcom/twitter/model/moments/av;->a:Ljava/util/List;

    .line 203
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/twitter/model/moments/av;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/twitter/model/timeline/al;",
            ">;)",
            "Lcom/twitter/model/moments/av;"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/twitter/model/moments/av;->d:Ljava/util/Map;

    .line 215
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/twitter/model/moments/av;->e()Lcom/twitter/model/moments/at;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/twitter/model/moments/at;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/twitter/model/moments/at;

    invoke-direct {v0, p0}, Lcom/twitter/model/moments/at;-><init>(Lcom/twitter/model/moments/av;)V

    return-object v0
.end method
