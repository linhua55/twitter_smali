.class public Lcef;
.super Lauz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauz",
        "<",
        "Ljava/util/List",
        "<",
        "Lcpf;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:Lcom/twitter/library/provider/dm;

.field private final e:Lcom/twitter/library/client/bd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcem;)V
    .locals 4

    .prologue
    .line 62
    invoke-direct {p0}, Lauz;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcef;->a:Landroid/content/Context;

    .line 64
    iget v0, p2, Lcem;->a:I

    iput v0, p0, Lcef;->c:I

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p2, Lcem;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcef;->b:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcef;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    iput-object v0, p0, Lcef;->e:Lcom/twitter/library/client/bd;

    .line 67
    iget-object v0, p0, Lcef;->a:Landroid/content/Context;

    iget-wide v2, p2, Lcem;->c:J

    invoke-static {v0, v2, v3}, Lcom/twitter/library/provider/dm;->a(Landroid/content/Context;J)Lcom/twitter/library/provider/dm;

    move-result-object v0

    iput-object v0, p0, Lcef;->d:Lcom/twitter/library/provider/dm;

    .line 68
    invoke-direct {p0}, Lcef;->a()V

    .line 69
    return-void
.end method

.method static synthetic a(Lcef;)Lcom/twitter/library/provider/dm;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcef;->d:Lcom/twitter/library/provider/dm;

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 72
    invoke-static {}, Lcom/twitter/util/collection/r;->e()Lcom/twitter/util/collection/r;

    move-result-object v0

    iget-object v1, p0, Lcef;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Iterable;)Lcom/twitter/util/collection/r;

    move-result-object v0

    .line 73
    new-instance v1, Lcek;

    iget-object v2, p0, Lcef;->d:Lcom/twitter/library/provider/dm;

    iget-object v3, p0, Lcef;->b:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcek;-><init>(Lcom/twitter/library/provider/dm;Ljava/util/List;)V

    .line 74
    new-instance v2, Lceg;

    invoke-direct {v2, p0, v0}, Lceg;-><init>(Lcef;Lcom/twitter/util/collection/r;)V

    invoke-virtual {v1, v2}, Lcek;->a(Lcom/twitter/internal/android/service/c;)Lcom/twitter/internal/android/service/AsyncOperation;

    .line 97
    iget-object v0, p0, Lcef;->e:Lcom/twitter/library/client/bd;

    invoke-virtual {v0, v1}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 98
    return-void
.end method

.method static synthetic a(Lcef;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcef;->a(Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic a(Lcef;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcef;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcpf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcef;->e:Lcom/twitter/library/client/bd;

    new-instance v1, Lcen;

    iget-object v2, p0, Lcef;->a:Landroid/content/Context;

    iget v3, p0, Lcef;->c:I

    invoke-direct {v1, v2, v3, p1}, Lcen;-><init>(Landroid/content/Context;ILjava/util/List;)V

    new-instance v2, Lceh;

    invoke-direct {v2, p0, p2}, Lceh;-><init>(Lcef;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 118
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcpf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 139
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpf;

    iget-wide v0, v0, Lcpf;->n:J

    .line 140
    :goto_0
    invoke-direct {p0}, Lcef;->c()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    .line 141
    :goto_1
    if-nez v2, :cond_2

    .line 142
    iget-object v2, p0, Lcef;->e:Lcom/twitter/library/client/bd;

    new-instance v3, Lcee;

    iget-object v4, p0, Lcef;->a:Landroid/content/Context;

    iget v5, p0, Lcef;->c:I

    invoke-direct {v3, v4, v5, v0, v1}, Lcee;-><init>(Landroid/content/Context;IJ)V

    new-instance v0, Lcei;

    invoke-direct {v0, p0, p1}, Lcei;-><init>(Lcef;Ljava/util/Map;)V

    invoke-virtual {v2, v3, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 166
    :goto_2
    return-void

    .line 139
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    .line 140
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 164
    :cond_2
    invoke-direct {p0, p1}, Lcef;->b(Ljava/util/Map;)V

    goto :goto_2
.end method

.method static synthetic b(Lcef;)Lcom/twitter/library/client/bd;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcef;->e:Lcom/twitter/library/client/bd;

    return-object v0
.end method

.method static synthetic b(Lcef;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcef;->b(Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcpf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 171
    iget-object v0, p0, Lcef;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 172
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcef;->a(Ljava/lang/Object;)V

    .line 175
    return-void
.end method

.method private c()J
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    const-string/jumbo v1, "photo_stickers_invalid_stickers_last_modified"

    invoke-static {v1}, Lcom/twitter/config/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    :try_start_0
    sget-object v2, Lcpz;->a:Ljava/text/DateFormat;

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0
.end method
