.class public Lcom/twitter/model/moments/at;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/at;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/util/Map;
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

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/moments/ay;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcom/twitter/model/moments/aw;

.field public final e:Lcom/twitter/model/timeline/l;

.field public final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/twitter/model/moments/bc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/moments/bc;-><init>(Lcom/twitter/model/moments/au;)V

    sput-object v0, Lcom/twitter/model/moments/at;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/moments/av;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/twitter/model/moments/av;->a(Lcom/twitter/model/moments/av;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/at;->c:Ljava/util/List;

    .line 36
    invoke-static {p1}, Lcom/twitter/model/moments/av;->b(Lcom/twitter/model/moments/av;)Lcom/twitter/model/moments/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/at;->d:Lcom/twitter/model/moments/aw;

    .line 37
    invoke-static {p1}, Lcom/twitter/model/moments/av;->c(Lcom/twitter/model/moments/av;)Lcom/twitter/model/timeline/l;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/at;->e:Lcom/twitter/model/timeline/l;

    .line 38
    invoke-static {p1}, Lcom/twitter/model/moments/av;->d(Lcom/twitter/model/moments/av;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/at;->b:Ljava/util/Map;

    .line 39
    invoke-static {p1}, Lcom/twitter/model/moments/av;->e(Lcom/twitter/model/moments/av;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/moments/at;->f:J

    .line 40
    return-void
.end method
