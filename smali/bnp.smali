.class public abstract Lbnp;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lbnp;",
        ">",
        "Lcom/twitter/util/object/h",
        "<",
        "Lbno;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I

.field private b:Landroid/content/res/Resources;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    .line 197
    const-string/jumbo v0, ""

    iput-object v0, p0, Lbnp;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lbnp;)Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lbnp;->b:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic b(Lbnp;)J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lbnp;->c:J

    return-wide v0
.end method

.method static synthetic c(Lbnp;)J
    .locals 2

    .prologue
    .line 190
    iget-wide v0, p0, Lbnp;->d:J

    return-wide v0
.end method

.method static synthetic d(Lbnp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lbnp;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lbnp;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lbnp;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lbnp;)Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lbnp;->g:Z

    return v0
.end method

.method static synthetic g(Lbnp;)I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lbnp;->h:I

    return v0
.end method


# virtual methods
.method public a(I)Lbnp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 239
    iput p1, p0, Lbnp;->h:I

    .line 240
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnp;

    return-object v0
.end method

.method public a(J)Lbnp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 209
    iput-wide p1, p0, Lbnp;->c:J

    .line 210
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnp;

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;)Lbnp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 203
    iput-object p1, p0, Lbnp;->b:Landroid/content/res/Resources;

    .line 204
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnp;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lbnp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 221
    iput-object p1, p0, Lbnp;->e:Ljava/lang/String;

    .line 222
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnp;

    return-object v0
.end method

.method public a(Z)Lbnp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 233
    iput-boolean p1, p0, Lbnp;->g:Z

    .line 234
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnp;

    return-object v0
.end method

.method public b(I)Lbnp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .prologue
    .line 245
    iput p1, p0, Lbnp;->a:I

    .line 246
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnp;

    return-object v0
.end method

.method public b(J)Lbnp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TB;"
        }
    .end annotation

    .prologue
    .line 215
    iput-wide p1, p0, Lbnp;->d:J

    .line 216
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnp;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lbnp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 227
    iput-object p1, p0, Lbnp;->f:Ljava/lang/String;

    .line 228
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbnp;

    return-object v0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lbnp;->b:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
