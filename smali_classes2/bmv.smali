.class public abstract Lbmv;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Lbmu;",
        ">",
        "Lcom/twitter/util/object/h",
        "<TU;>;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/library/client/Session;

.field private c:I

.field private d:I

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 93
    iput-object p1, p0, Lbmv;->a:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lbmv;->b:Lcom/twitter/library/client/Session;

    .line 95
    invoke-static {}, Lcom/twitter/util/collection/v;->f()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lbmv;->e:Ljava/util/Map;

    .line 96
    invoke-static {}, Lcom/twitter/util/collection/r;->g()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lbmv;->f:Ljava/util/List;

    .line 97
    return-void
.end method

.method static synthetic a(Lbmv;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbmv;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lbmv;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbmv;->b:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method static synthetic c(Lbmv;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lbmv;->c:I

    return v0
.end method

.method static synthetic d(Lbmv;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lbmv;->d:I

    return v0
.end method

.method static synthetic e(Lbmv;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbmv;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lbmv;)Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lbmv;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a(I)Lbmv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lbmv",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 101
    iput p1, p0, Lbmv;->c:I

    .line 102
    return-object p0
.end method

.method public a(Ljava/util/List;)Lbmv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbmv",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 119
    iput-object p1, p0, Lbmv;->f:Ljava/util/List;

    .line 120
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lbmv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/nio/ByteBuffer;",
            ">;)",
            "Lbmv",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 113
    iput-object p1, p0, Lbmv;->e:Ljava/util/Map;

    .line 114
    return-object p0
.end method

.method public b(I)Lbmv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lbmv",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 107
    iput p1, p0, Lbmv;->d:I

    .line 108
    return-object p0
.end method
