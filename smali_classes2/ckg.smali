.class public Lckg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/model/core/w;


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lckg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Lcki;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcki;-><init>(Lckh;)V

    sput-object v0, Lckg;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lckg;->b:J

    .line 44
    iput-object p3, p0, Lckg;->c:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lckg;->d:Ljava/lang/String;

    .line 46
    iput-wide p5, p0, Lckg;->e:J

    .line 47
    return-void
.end method

.method synthetic constructor <init>(JLjava/lang/String;Ljava/lang/String;JLckh;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct/range {p0 .. p6}, Lckg;-><init>(JLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/cm;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Lcom/twitter/model/core/cm;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lckg;->b:J

    .line 35
    iget-object v0, p1, Lcom/twitter/model/core/cm;->h:Ljava/lang/String;

    iput-object v0, p0, Lckg;->c:Ljava/lang/String;

    .line 36
    iget-object v0, p1, Lcom/twitter/model/core/cm;->i:Ljava/lang/String;

    iput-object v0, p0, Lckg;->d:Ljava/lang/String;

    .line 37
    iget-object v0, p1, Lcom/twitter/model/core/cm;->n:Lcom/twitter/model/core/TwitterUser;

    .line 38
    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lckg;->e:J

    .line 39
    return-void

    .line 38
    :cond_0
    iget-wide v0, v0, Lcom/twitter/model/core/TwitterUser;->c:J

    goto :goto_0
.end method

.method public static a([B)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Lckg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    sget-object v0, Lckg;->a:Lcom/twitter/util/serialization/ah;

    .line 74
    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 75
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/cm;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/cm;

    .line 64
    if-eqz v0, :cond_0

    .line 65
    new-instance v3, Lckg;

    invoke-direct {v3, v0}, Lckg;-><init>(Lcom/twitter/model/core/cm;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    :cond_1
    sget-object v0, Lckg;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0}, Lcom/twitter/util/collection/e;->a(Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lckg;->b:J

    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lckg;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
